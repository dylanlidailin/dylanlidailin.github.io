# Import libraries
library(dplyr)
library(tidyverse)
library(leaflet)
library(lubridate)
library(sf)
library(leaflet.extras)
library(readr)
library(gganimate)

# Load the dataset
df2017 <- read_csv("Data/Transit_2017.csv")
df2018 <- read_csv("Data/Transit_2018.csv")
df2020 <- read_csv("Data/Transit_2020.csv")
df <- bind_rows(df2017, df2018, df2020)
# Export the combined dataset for future use
write_csv(df, "Data/Combined_Transit.csv")
print("Datasets loaded and combined.")