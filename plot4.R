#Coursera: Exploratory Data Analysis --> Plot 4
file <- "C:/Users/npommer/Desktop/coursera/Course 4 Project 1/household_power_consumption.txt"
data <- read.table(file, header = TRUE, sep = ";", stringsAsFactors = FALSE)
subsetdata <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]

globalactivepower <- as.numeric(subsetdata$Global_active_power)
globalreactivepower <- as.numeric(subsetdata$Global_reactive_power)
voltage <- as.numeric(subsetdata$Voltage)
datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
subMetering1 <- as.numeric(subsetdata$Sub_metering_1)
subMetering2 <- as.numeric(subsetdata$Sub_metering_2)
subMetering3 <- as.numeric(subsetdata$Sub_metering_3)

png("plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))

plot(datetime, globalactivepower, type = "l", xlab = "", ylab = "Global Active Power", cex = 0.2)
plot(datetime, voltage, type = "l", xlab = "datetime", ylab = "Voltage")
plot(datetime, subMetering1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(datetime, subMetering2, type = "l", col = "red")
lines(datetime, subMetering3, type = "l", col = "blue")
legend("topright", c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"), lty=1, lwd=2.5, col = c("black", "red", "blue"), bty = "o", cex = 0.6)
plot(datetime, globalreactivepower, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
dev.off()