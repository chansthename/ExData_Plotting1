#setwd("C:/Users/Chana/Downloads/Documents/ExData_Plotting1")

data <- read.csv("household_power_consumption.txt", sep=";", stringsAsFactors = F)
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data <- data[data$Date == "2007-02-01" | data$Date== "2007-02-02",]
data$Global_active_power <- as.numeric(data$Global_active_power)
data$datetime <- as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S")

png("plot2.png", width=480, height=480)
plot(x = data$datetime, y = data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
