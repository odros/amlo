### This script scrapes press conference transcriptions from a website

## HTML and XML manipulation
library(rvest)
# Wrappers for package 'stringi', string, text and NLP tools
library(stringr)
# Parsing flat files into tibbles
library(readr)
# Tools for working with HTTP
library(httr)

### Preparations ###

# header to stay identifiable
headers = add_headers(`From` = "https://github.com/odros/amlo", `UserAgent` = R.Version()$version.string)

# folder to store scraped speeches
folder <- "data/raw/"
dir.create(folder)

# Create press conference URLs; as of 12.2021 less than 700 speeches exist.
seq <- seq(1,700) # here we can set the number of speeches
base_url <- "https://lopezobrador.org.mx/version-estenografica-de-la-conferencia-de-prensa-matutina-del-presidente-andres-manuel-lopez-obrador-"
url_list <- paste0(base_url, seq, "/")




### Helper function 1: validate URL
# The function returns TRUE only when the requested speech has a title that contains moring speech.
# The key attribute here

validate <- function(speech_url)
{
  page_title <- ""
  try
  {
    node <- html_nodes(speech_url, xpath = '/html/body/div[3]/div/div/div[1]/div/article/h1')
    page_title <- html_text(node)
  }
  target <- "Versión estenográfica de la conferencia de prensa matutina del presidente Andrés Manuel López Obrador"
  return(grepl( target, page_title, fixed = TRUE) )
}



## Helper function #2: returns speech number of redirected URL
#
speech_nr <- function(url)
{
  redirected <- httr::GET(url, headers)[["url"]]
  step1 <- sub(".*-", "", redirected)
  step2 <- sub("/$", "", step1)
  return(step2)
}

## Code to scrape speeches and store them in text files


for (i in 1:length(url_list)){
  
  speech_url <- session(url_list[i],headers) %>%
    read_html(url_list)
  
  if(speech_nr(url_list[i]) == seq[i] ){
    if(validate(speech_url)){
      parsed_date <- html_nodes(speech_url, xpath = '//*[contains(concat( " ", @class, " " ), concat( " ", "entry-date", " " ))]')
      date <- html_text(parsed_date)%>%
        parse_date("%B %d, %Y", locale = locale("es"))
      if (!file.exists(paste0(folder,date," no. ", seq[i]))) {
        parsed_speech <- html_nodes(speech_url, xpath = '//p')
        speech <- html_text(parsed_speech)
        write(speech, file = paste0(folder,date," no. ", seq[i],".txt"))
      }
    }
  }
  # a timer for polite scrping 
  Sys.sleep(runif(1, 1, 2)) 
}












