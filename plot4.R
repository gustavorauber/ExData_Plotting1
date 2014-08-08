# plot4.R - Many plots

# Set Language to English
Sys.setlocale("LC_TIME","English")

data <- read.csv("../household_power_consumption.txt", sep=";", skip=66637, 
                 nrows=2880, header=FALSE, 
                 na.strings=c("?"),
                 colClasses=c("character", "character", "numeric",
                              "numeric", "numeric", "numeric",
                              "numeric", "numeric", "numeric"))

dates <- strptime(paste(data[,1], data[,2]), "%d/%m/%Y %H:%M:%S", tz="UTC")

png("plot4.png", height=480, width=480)

par(mfrow=c(2,2))

plot(x=dates, y=data[,3], main="", type="l",
     xlab="", ylab="Global Active Power (kilowatts)")

plot(x=dates, y=data[,5], main="", type="l",
     xlab="datetime", ylab="Voltage")

plot(x=dates, y=data[,7], main="", type="l",
     xlab="", ylab="Energy sub metering")
lines(x=dates,y=data[,8], col="red")
lines(x=dates,y=data[,9], col="blue")
legend("topright", 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=c(1,1,1))

plot(x=dates, y=data[,4], main="", type="l",
     xlab="datetime", ylab="Global_reactive_power")

dev.off()