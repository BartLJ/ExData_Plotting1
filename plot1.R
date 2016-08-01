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