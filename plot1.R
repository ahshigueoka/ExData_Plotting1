plot1 <- function() {
    # Load the desired data
    df <- filter_data()

    # Open the png file plot1.png to plot to
    # The image has a size of 480x480 pixels
    png(filename="plot1.png", width = 480, height = 480)

    # Plot the histogram
    hist(df$Global_active_power, col="red",
         xlab="Global Active Power (kilowatts)", ylab="Frequency",
         main="Global Active Power")

    # Close the device
    dev.off()
}
