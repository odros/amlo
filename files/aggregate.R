### This function aggregates a speech contained in a CSV file and returns a data frame
library(dplyr)

aggregate <- function(file)
{
  # Extract date from file name
  date <- stringr::str_sub(file, - 14, - 5)
  try
  { 
    parsed_speech <- read.csv(file = file, header = TRUE) %>%
      select(-X, turn) %>% # 
      group_by(speaker) %>% 
      summarize(speech = paste(speech, collapse = " \n ")) %>% # combine text of each speaker 
      mutate(Date = date, .before = speaker)
   }
  return(parsed_speech)
}
