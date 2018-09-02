#setwd("C:/Users/Chana/Downloads/Documents/ExData_Plotting1")

data <- read.csv("household_power_consumption.txt", sep=";", stringsAsFactors = F)
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data$Time <- strptime(data$Time, format = "%H:%M:%S")
data <- data[data$Date == "2007-02-01" | data$Date== "2007-02-02",]
data$Global_active_power <- as.numeric(data$Global_active_power)

png("plot1.png", width=480, height=480)
hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
