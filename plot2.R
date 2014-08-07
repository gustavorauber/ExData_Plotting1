# plot2.R - Global Active Power over Time

data <- read.csv("../household_power_consumption.txt", sep=";", skip=66637, 
                 nrows=2880, header=FALSE, 
                 na.strings=c("?"),
                 colClasses=c("character", "character", "numeric",
                              "numeric", "numeric", "numeric",
                              "numeric", "numeric", "numeric"))

dates <- strptime(paste(data[,1], data[,2]), "%d/%m/%Y %H:%M:%S", tz="UTC")

plot(x=dates, y=data[,3], main="", type="l",
     xlab="", ylab="Global Active Power (kilowatts)")

dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()
