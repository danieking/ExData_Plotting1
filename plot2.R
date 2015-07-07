all_data<-read.csv("household_power_consumption.txt", header = TRUE, sep = ";")
data<-all_data[all_data$Date=="1/2/2007"|all_data$Date=="2/2/2007",]
data$Global_active_power<-as.numeric(as.character(data$Global_active_power))
png(filename = "plot2.png", width = 480, height = 480)
plot(data$Global_active_power, type = "l", xaxt = "n", xlab = '', ylab = 'Global Active Power (kilowatts)')
axis(1, at=c(1,nrow(data)/2,nrow(data)), labels = c('Thu','Fri','Sat'))
dev.off()
