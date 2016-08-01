## Coursera Exploratory Data Analysis Assignment - Course Project 1
##
## This script creates picture plot2.png
## The initialization of the environment is done in script plot_init.R
##
source("plot_init.R")

png_file <- file.path(figure_dir, "plot2.png")
png(filename = png_file,
    width = 480,
    height = 480,
    units = "px",
    bg = "transparent" )

plot(df$datetime,
     df$Global_active_power, 
     type = "l", 
     xlab = "", 
     ylab = "Global Active Power (kilowatts)"
     )

dev.off()