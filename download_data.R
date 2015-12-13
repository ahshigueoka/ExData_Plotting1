# This R script downloads the data of the Course Project 1, from the
# Exploratory Data Analysis course, available at www.coursera.org

# The link to the data
fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

# Download the data
download.file(fileURL, destfile = "./power_consumption.zip", method = "curl")

# Unzip the data
system("unzip power_consumption.zip")
