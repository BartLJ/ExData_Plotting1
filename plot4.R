## Coursera Exploratory Data Analysis Assignment - Course Project 1
##
## This script creates picture plot4.png
## The initialization of the environment is done in script plot_init.R
##
source("plot_init.R")

png_file <- file.path(figure_dir, "plot4.png")
png(filename = png_file,
    width = 480,
    height = 480,
    units = "px",
    bg = "transparent" )

par(mfrow = c(2,2))
# fig 1
with(df, plot(datetime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power"))
# fig 2
with(df, plot(datetime, Voltage, type = "l"))
# fig 3
with(df, plot(datetime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))
with(df, points(datetime, Sub_metering_2, type = "l", col = "red"))
with(df, points(datetime, Sub_metering_3, type = "l", col = "blue"))
legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), 
       lty = "solid", 
       bty = "n"
       )
# fig 4
with(df, plot(datetime, Global_reactive_power, type = "l"))

dev.off()