# amlo
This repository contains the code and documentation for the final project of the Fall 2021 Introduction to Data Science course of Hertie School's Master of Data Science for Public Policy program.

## Context

Assuming office on 1 December 2018, the incumbent Mexican president, Andrés Manuel López Obrador (AMLO), is known for his daily morning press conferences. In them, he discusses his administration’s policies, current events and the country’s state of affairs. 

## Objectives

We propose to scrape, parse and explore AMLO's speeches. Hence, our proposal consists of three -two technical and one analytical- components:

1.	Scrape: we will scrape all , parse them to detect the different participants and create a database with the resulting content.
2.	A very simple package prototype that, in a similar fashion to the legislatoR package, is able to access the aforementioned database and provide the user with a selection of speeches based on criteria such as date and location.
3.	A basic but hopefully meaningful analytical exploration of the corpus in order to provide some insights into the role that civil society actors play in the speeches. We propose to use quanteda to achieve this.
![image](https://user-images.githubusercontent.com/44981224/146664337-b5e5123a-9e85-4aad-9f72-06f0c65dad20.png)



### About our scripts, commenting and documentation
- A combination of regular argument passing to functions and piping is used
- All the functions used in our scripts will be explicit about the package they come from, unless they come from `base`

### Pending issues
- Specify package of origin for every function
- Properly comment every non-self-explanatory line of code
