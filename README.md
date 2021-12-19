# amlo
This repository contains the code and documentation for the final project of the Fall 2021 Introduction to Data Science course of Hertie School's Master of Data Science for Public Policy program.

## Context

Assuming office on 1 December 2018, the incumbent Mexican president, Andrés Manuel López Obrador (AMLO), is known for his _daily_ early morning press conferences. In them, he discusses his administration’s policies, current events and the country’s state of affairs. The conferences have garnered a lot of attention from researchers, journalists and students, and there is a lot of interest in performing all sorts of analyses around them.

Every press conference is transcribed and published online in a blog-like fashion. In order to enable the aforementioned analyses -our own and those of any other interested party-, collecting them as text files is a necessary first step. To further facilitate analysis, a basic parsing of the press conferences in order to detect speakers and remarks would also be required.

## Proposal and objectives

For our final data science project -but also to enable wider research into the conferences-, we propose to scrape all available conferences and parse them into a useful format. Additionally, in order to demonstrate the usability of the parsed conferences, we also propose to perform an analysis of the resulting corpus. Concretely, our proposal consists of three -two technical and one analytical- components:

1.	Scraping: we will scrape all available press conferences and store them as text files.
2.	Parsing: we will parse the conferences to produce data frames containing speaker and speech.
3.	Analyzing: we will perform a thematic exploration of the corpus to gain insights into the role that the covid pandemic has played in the conferences.

## The repository

In this repository you will find

### About our scripts, commenting and documentation
- A combination of regular argument passing to functions and piping is used
- All the functions used in our scripts will be explicit about the package they come from, unless they come from `base`

### Pending issues
- Specify package of origin for every function
- Properly comment every non-self-explanatory line of code

## Contributors
- Marco Schildt (GitHub)
- Santiago Sordo (GitHub)
- Gülce Sena Tuncer

## License
The material in this repository is work in progress and is hence not licensed and private.

## Statement of contributions
All contributors have participated in planning, designing and implementing the contents of this repository.

