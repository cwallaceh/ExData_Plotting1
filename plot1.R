#Course Project 1, Plot 1.

#Read data
data <- read.table("household_power_consumption.txt", header=FALSE, sep=";", nrows=2880, na.strings = "NA", skip = 66637, stringsAsFactors=FALSE, dec=".")
colnames(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

##Plot data
png("plot1.png", width=480, height=480)
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
