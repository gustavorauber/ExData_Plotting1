# plot1.R - Histogram of Global Active Power

data <- read.csv("../household_power_consumption.txt", sep=";", skip=66637, 
                 nrows=2880, header=FALSE, 
                 na.strings=c("?"),
                 colClasses=c("character", "character", "numeric",
                              "numeric", "numeric", "numeric",
                              "numeric", "numeric", "numeric"))
                 
hist(data[,3], col="red", main="Global Active Power", 
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")

dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()
