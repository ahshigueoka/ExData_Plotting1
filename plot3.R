plot3 <- function(df) {
    # Create the file plot3.png to plot to
    # Image size of 480x480 pixels
    png(filename = "plot3.png", width = 480, height = 480)

    # Plot the timeseries
    plot(df$datetime, df$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type='n')
    lines(df$datetime, df$Sub_metering_1, col="black")
    lines(df$datetime, df$Sub_metering_2, col="red")
    lines(df$datetime, df$Sub_metering_3, col="blue")

	# Add the legend
	legend("topright", col = c("black", "red", "blue"), lty = c(1,1,1),
		legend=(c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")))

    # Close the device
    dev.off()
}
