library(DBI)
library(knitr)
library(readxl)
library(dplyr)
library(reticulate)
library(renv)
library(ggplot2)
library(babynames)

# setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Establish a connection to the SQLite database
con <- dbConnect(RSQLite::SQLite(), "data/db.sqlite")



# Read the Excel file
customers <- read_excel("data/db.xlsx", sheet = "Customers")
suppliers <- read_excel("data/db.xlsx", sheet = "Suppliers")
products <- read_excel("data/db.xlsx", sheet = "Products")
orders <- read_excel("data/db.xlsx", sheet = "Orders")

babynames = babynames::babynames
# installing python packages:
#py_install("seaborn")

