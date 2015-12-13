plot4 <- function() {
    # Load the desired data
    df <- filter_data()

	# Create the file plot4.png to plot to
    # Image size of 480x480 pixels
    png(filename = "plot4.png", width = 480, height = 480)

	# Create a 2x2 multiple plot
	par(mfcol = c(2,2))

	# Plot the Global Active Power
	with(df, {
		plot(datetime, Global_active_power, xlab = "",
			ylab = "Global Active Power (kilowatts)", type='n')
    	lines(datetime, Global_active_power)
	})

	# Plot the Energy sub metering
	with(df, {
		plot(datetime, Sub_metering_1, xlab = "",
			ylab = "Energy sub metering", type='n')
		lines(datetime, Sub_metering_1, col="black")
		lines(datetime, Sub_metering_2, col="red")
		lines(datetime, Sub_metering_3, col="blue")
	})
	# Add the legend
	legend("topright", col = c("black", "red", "blue"),
		lty = c(1,1,1), bty = "n", 
		legend=(c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")))

    # Plot the Voltage
	with(df, {
		plot(datetime, Voltage, type='n')
		lines(datetime, Voltage)
	})

	# Plot the Global Reactive Power
	with(df, {
		plot(datetime, Global_reactive_power, type='n')
		lines(datetime, Global_reactive_power)
	})

    # Close the device
    dev.off()
}
