library(dplyr)

filter_data <- function() {
    # The file containing the data
    filename <- "household_power_consumption.txt"

    # Read in the data
    power_data <- read.table(filename, header=TRUE,
        sep=";", dec=".", na.strings = "?", 
        colClasses = c(rep("character", 2), rep("numeric", 7)))

    names(power_data)
    # Subset only those where the day of measurement is
    # 01/02/2007 or 02/02/2007
    sub_data <- filter(power_data, Date == "1/2/2007" | Date == "2/2/2007")

    # Remove the original data from memory
    rm(power_data)

    # Convert the strings in Date and Time to POSIXlt time format
    datetime <- strptime(paste(sub_data$Date, sub_data$Time),
                           format = "%d/%m/%Y %H:%M:%S", tz="GMT")

    # Add the new column
    sub_data <- cbind(sub_data, datetime)

    # Return the data without the original Date and Time columns
    select(sub_data, Global_active_power:datetime)
}
