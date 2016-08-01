## Coursera Exploratory Data Analysis Assignment - Course Project 1
##
## This script creates picture plot1.png
## The initialization of the environment is done in script plot_init.R
##
source("plot_init.R")

png_file <- file.path(figure_dir, "plot1.png")
png(filename = png_file,
    width = 480,
    height = 480,
    units = "px",
    bg = "transparent" )

hist(df$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency" )

dev.off()