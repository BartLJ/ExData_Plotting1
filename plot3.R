## Coursera Exploratory Data Analysis Assignment - Course Project 1
##
## This script creates picture plot3.png
## The initialization of the environment is done in script plot_init.R
##
source("plot_init.R")

png_file <- file.path(figure_dir, "plot3.png")
png(filename = png_file,
    width = 480,
    height = 480,
    units = "px",
    bg = "transparent" )

plot(df$datetime, df$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(df$datetime, df$Sub_metering_2, type = "l", col = "red")
points(df$datetime, df$Sub_metering_3, type = "l", col = "blue")
legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), 
       lty = "solid"
       )

dev.off()