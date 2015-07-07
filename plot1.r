all_data<-read.csv("household_power_consumption.txt", header = TRUE, sep = ";")
data<-all_data[all_data$Date=="1/2/2007"|all_data$Date=="2/2/2007",]
data$Global_active_power<-as.numeric(as.character(data$Global_active_power))
png(filename = "plot1.png", width = 480, height = 480)
hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()