Scraping, parsing and exploring the Mexican president's daily press conferences


This repository contains the code and documentation for the final project of the Fall 2021 Introduction to Data Science course of Hertie School's Master of Data Science for Public Policy program.

### Context

Assuming office on 1 December 2018, the incumbent Mexican president, Andrés Manuel López Obrador (AMLO), is known for his _daily_ early morning press conferences. In them, he discusses his administration’s policies, current events and the country’s state of affairs. The conferences have garnered a lot of attention from researchers, journalists and students, and there is a lot of interest in performing all sorts of analyses around them.

Every press conference is transcribed and published online in a blog-like fashion; [this](https://lopezobrador.org.mx) is one of the sites where they are published. In order to enable the aforementioned analyses -our own and those of any other interested party-, collecting them as text files is a necessary first step. To further facilitate analysis, a basic parsing of the press conferences in order to detect speakers and remarks would also be required.

### The project

For our final data science project -but also to enable wider research into the matter-, we have scraped all available conferences and parsed them into a useful format. To demonstrate the usability of the parsed conferences, we have also performed an analysis of the resulting corpus. Concretely, the project consists of three -two technical and one analytical- components:

1.	Scraping: we  scrape all available press conferences and store them as text files.
2.	Parsing: we will parse the conferences to produce data frames containing speaker and speech.
3.	Analysis: we will perform a thematic exploration of the corpus to gain insights into the role that the covid pandemic has played in the conferences.

### The repository

In this repository you will find a [code](/code) folder, containing the R code we wrote for the project and the R Markdown source file we used to knit our report. Besides this readme, in the root directory you will also find the HTML report itself, whose rendered version can be accessed here.

The report is a walkthrough of all the project's files and our analysis component. In it you will find detailed information regarding each component.

### About our scripts, commenting and documentation
- A combination of regular argument passing to functions and piping is used
- All the functions used in our scripts will be explicit about the package they come from, unless they come from `base`

### Pending issues
- Specify package of origin for every function
- Properly comment every non-self-explanatory line of code

### License
The material in this repository is work in progress and is hence private not licensed.

### Contributors
- Marco Schildt (mschildt@icloud.com)
- Gülce Sena Tuncer (gulcesenatuncer@gmail.com)
- Santiago Sordo (odros@hotmail.com)

### Statement of contributions
All contributors have participated in planning, designing, implementing and debugging the contents of this repository. Marco led the scpraping, Santiago the parsing and Gülce the analysis.

