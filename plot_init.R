##
## this script contains the shared code for this project:
## - load required libraries
## - importing and transforming the provided data set
## - creating the output directory if it does not exist
## - initializing the figure_dir variable
##

library(dplyr)

## Assume that the data set file is stored in the directory "data" in the current working directory
data_file <- file.path("data", "household_power_consumption.txt")

## import data
df <- read.table(data_file, header = TRUE, sep = ";", na.strings = "?", as.is = TRUE)

## convert Date variable to date type and create a subset
#df$Date <- as.Date(df$Date, format = "%d/%m/%Y")
df <- subset(df, between(as.Date(df$Date, format = "%d/%m/%Y"), as.Date("2007-02-01"), as.Date("2007-02-02")))

## convert Date and Time variable to POSIXct type
df$datetime <- strptime(paste(df$Date, df$Time), format = "%d/%m/%Y %H:%M:%S")

## create a png file in the directory "figure" in the current working directory
figure_dir <- "figure"
if(!dir.exists(figure_dir)) dir.create(figure_dir, recursive = TRUE)
