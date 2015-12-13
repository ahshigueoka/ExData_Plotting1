plot2 <- function() {
    # Load the desired data
    df <- filter_data()

    # Create the file plot2.png to plot to
    # Image size of 480x480 pixels
    png(filename = "plot2.png", width = 480, height = 480)

    # Plot the timeseries
    plot(df$datetime, df$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type='n')
    lines(df$datetime, df$Global_active_power)

    # Close the device
    dev.off()
}
