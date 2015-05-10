#Course Project 1, Plot 3.

#Read data
data <- read.table("household_power_consumption.txt", header=FALSE, sep=";", nrows=2880, na.strings = "NA", skip = 66637, stringsAsFactors=FALSE, dec=".")
colnames(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

#Change the weekdays to English (originally in Spanish)
Sys.setlocale("LC_TIME", "English")

##Plot data
png("plot3.png", width=480, height=480)
plot(strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), data$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), data$Sub_metering_2, type="l", col="red")
lines(strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), data$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=1, col=c("black", "red", "blue"))
dev.off()
