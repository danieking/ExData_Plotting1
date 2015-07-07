all_data<-read.csv("household_power_consumption.txt", header = TRUE, sep = ";")
data<-all_data[all_data$Date=="1/2/2007"|all_data$Date=="2/2/2007",]
data$Global_active_power<-as.numeric(as.character(data$Global_active_power))
data$Global_reactive_power<-as.numeric(as.character(data$Global_reactive_power))
data$Voltage<-as.numeric(as.character(data$Voltage))
data$Sub_metering_1<-as.numeric(as.character(data$Sub_metering_1))
data$Sub_metering_2<-as.numeric(as.character(data$Sub_metering_2))
png(filename = "plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))

## First plot 
plot(data$Global_active_power, type = "l", xaxt = "n", xlab = '', ylab = 'Global Active Power (kilowatts)')
axis(1, at=c(1,nrow(data)/2,nrow(data)), labels = c('Thu','Fri','Sat'))

## Second plot plot 
plot(data$Voltage, type = "l", xaxt = "n", xlab = 'datetime', ylab = 'Voltage')
axis(1, at=c(1,nrow(data)/2,nrow(data)), labels = c('Thu','Fri','Sat'))

## Third plot 
plot(data$Sub_metering_1, type = "l", xaxt = "n", xlab = '', ylab = 'Energy sub metering')
lines(data$Sub_metering_2, lty = 1, col = "red")
lines(data$Sub_metering_3, lty = 1, col = "blue")
axis(1, at=c(1,nrow(data)/2,nrow(data)), labels = c('Thu','Fri','Sat'))
legend("topright", lty = 1, col=c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty = "n")

## Fourth plot 
plot(data$Global_reactive_power, type = "l", xaxt = "n", xlab = 'datetime', ylab = 'Global_reactive_power')
axis(1, at=c(1,nrow(data)/2,nrow(data)), labels = c('Thu','Fri','Sat'))

dev.off()
