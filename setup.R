library(DBI)
library(knitr)
library(readxl)
library(dplyr)

# Establish a connection to the SQLite database
con <- dbConnect(RSQLite::SQLite(), "data/db.sqlite")

# Read the Excel file
customers <- read_excel("data/db.xlsx", sheet = "Customers")
suppliers <- read_excel("data/db.xlsx", sheet = "Suppliers")
products <- read_excel("data/db.xlsx", sheet = "Products")
orders <- read_excel("data/db.xlsx", sheet = "Orders")