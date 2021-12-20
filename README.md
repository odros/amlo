# Scraping, parsing and exploring the Mexican president's daily press conferences


This repository contains the code and documentation for the final project of the Fall 2021 Introduction to Data Science course of Hertie School's Master of Data Science for Public Policy program.

### Context

Assuming office on 1 December 2018, the incumbent Mexican president, Andrés Manuel López Obrador (AMLO), is known for his _daily_ early morning press conferences. In them, he discusses his administration’s policies, current events and the country’s state of affairs. The conferences have garnered a lot of attention from researchers, journalists and students, and there is a lot of interest in performing all sorts of analyses around them.

Every press conference is transcribed and published online in a blog-like fashion; [this](https://lopezobrador.org.mx) is one of the sites where they are published. In order to enable the aforementioned analyses -our own and those of any other interested party-, collecting them as text files is a necessary first step. To further facilitate analysis, a basic parsing of the press conferences in order to detect speakers and remarks would also be required.

### The project

For our final data science project -but also to enable wider research into the matter-, we have scraped all available conferences and parsed them into a useful format. To demonstrate the usability of the parsed conferences, we have also performed an analysis of the resulting corpus. Concretely, the project consists of three -two technical and one analytical- components:

1.	Scraping: we  scrape all available press conferences and store them as text files.
2.	Parsing: we will parse the conferences to produce data frames containing speaker and speech.
3.	Analysis: we will perform a thematic exploration of the corpus to gain insights into the role that the covid pandemic has played in the conferences.

### Our work and the repository

To develop the project, we have created a parsing function that can be called by a scraper sript. The scraper script then obtains every available press conference transcript and downloads it into a text file. To document the project and provide a report, we have created  explainers that walk you through our parser function, our scraper script and a helper aggregator function. Finally, a comprehensive walk-through of our analysis is also provided.

In this repository you will find a [files](/files) folder, containing the R code we wrote for the project and any helper files (like a sample text file containing a transcript or the script we ran to process all transcripts) and an [explainers](/explainers) folder containing the R Markdown source files we used to knit walk-throughs -detailed explanations regarding each component- for each file, our analysis and the resulting HTML files. Our project report is hence made up of o separate explainers for simplicity and readability. The rendered HTMLs for the explainers can be accessed here:
- [1. Scraping]
- [2. Parsing](https://raw.githack.com/odros/amlo/main/explainers/parse.html)
- [2.5 Aggregating](https://raw.githack.com/odros/amlo/main/explainers/aggregate.html)
- [3. Analysis](https://raw.githack.com/odros/amlo/main/explainers/analysis.html)

Note: we decided not to upload any text files, CSVs or the like, as not to clutter the repo with large amounts of data. Any such file which may be of interest is available upon request.

### License
The material in this repository is work in progress and is hence private and not licensed.

### Contributors
- Marco Schildt (mschildt@icloud.com)
- Gülce Sena Tuncer (gulcesenatuncer@gmail.com)
- Santiago Sordo (odros@hotmail.com)

### Statement of contributions
All contributors have equally participated in planning, designing, implementing and debugging the contents of this repository and the repository itself.
