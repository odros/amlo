### This script scrapes press conference transcriptions from a website

## HTML and XML manipulation
library(rvest)
# Wrappers for package 'stringi', string, text and NLP tools
library(stringr)
# Parsing flat files into tibbles
library(readr)
# Tools for working with HTTP
library(httr)

# Create press conference URLs; currently less than 700, this number grows with time.
base_url <- "https://lopezobrador.org.mx/version-estenografica-de-la-conferencia-de-prensa-matutina-del-presidente-andres-manuel-lopez-obrador-"
url <- paste0(base_url, 1:700, "/")

## Helper funtion #1: validate URL
# The function returns TRUE only when the requested file exists and has the title "Versión estenográfica" and "prensa matutina".
# The key attribute here
validate <- function(url)
{
  page_title <- ""
  try
  {
    page_url <- read_html(url)
    node <- html_nodes(page_url, xpath = '/html/body/div[3]/div/div/div[1]/div/article/h1')
    page_title <- html_text(node)
  }
  return(page_title == "Versión estenográfica de la conferencia de prensa matutina del presidente Andrés Manuel López Obrador")
}

## Helper funtion #2: return number of redirected URL
speech_nr <- function(url)
{
  redirected <- httr::GET(url)[["url"]]
  step1 <- sub(".*-", "", redirected)
  step2 <- sub("/$", "", step1)
  return(step2)
}

## Code to scrape speeches and store them in text files

# I'd suggest using small caps
folder <- "Data/raw/"
dir.create(folder)

for (i in 1:length(url))
{
  if(validate(url[i]))
  {
    speech_url <- read_html(url[i])
    parsed_speech <- html_nodes(speech_url, xpath = '//p')
    parsed_date <- html_nodes(speech_url, xpath = '//*[contains(concat( " ", @class, " " ), concat( " ", "entry-date", " " ))]')
    speech <- html_text(parsed_speech)
    date <- html_text(parsed_date)%>%
      parse_date("%B %d, %Y", locale = locale("es"))
    
    if (speech_nr(url[i]) == seq[i]){
      
      if (!file.exists(paste0(folder,date," no. ", seq[i]))) {
        
        write(speech, file = paste0(folder,date," no. ", seq[i],".txt"))
      }
    }
  }
  # timer (still needs to be set)  
  Sys.sleep(runif(1, 1, 2)) 
}
