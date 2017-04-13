#Coursera: Exploratory Data Analysis --> Plot 1
file <- "C:/Users/npommer/Desktop/coursera/Course 4 Project 1/household_power_consumption.txt"
data <- read.table(file, header = TRUE, sep = ";", stringsAsFactors = FALSE)
subsetdata <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]

globalactivepower <- as.numeric(subsetdata$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(globalactivepower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts")
dev.off()