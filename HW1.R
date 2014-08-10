R Commands for this assignment

another way to read file (This Chart looks right) plot 1
n<-read.table("./household_power_consumption.txt", header=TRUE, sep=";", skip=(1440*46+396), nrow=2880)
hist(as.numeric(n[,3]), main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.copy(png,'plot1.png', width=480, height=480)
dev.off()

Plot 2 
plot( strptime(paste(n[,1],n[,2]), "%d/%m/%Y %H:%M:%S"),n[,3], type='l', ylab="Global Active Power (kilowatts)", xlab='')

Plot 3
plot( strptime(paste(n[,1],n[,2]), "%d/%m/%Y %H:%M:%S"),n[,7], type='l', ylab="Energy sub metering", xlab='')
points(strptime(paste(n[,1],n[,2]), "%d/%m/%Y %H:%M:%S"),n[,8], type='l',col="red")
points(strptime(paste(n[,1],n[,2]), "%d/%m/%Y %H:%M:%S"),n[,9], type='l',col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty =1, col=c("black", "red", "blue"))
dev.copy(png,'plot3.png', width=480, height=480)
dev.off()


plot 4
n<-read.table("./household_power_consumption.txt", header=TRUE, sep=";", skip=(1440*46+396), nrow=2880)
par(mfrow = c(2,2),lwd=0.75,mar = c(4,4,2,1), cex=0.6)
plot( strptime(paste(n[,1],n[,2]), "%d/%m/%Y %H:%M:%S"),n[,3], type='l', ylab="Global Active Power (kilowatts)", xlab='')
plot( strptime(paste(n[,1],n[,2]), "%d/%m/%Y %H:%M:%S"),n[,5], type='l', ylab="Voltage", xlab='')

plot( strptime(paste(n[,1],n[,2]), "%d/%m/%Y %H:%M:%S"),n[,7], type='l', ylab="Energy sub metering", xlab='')
points(strptime(paste(n[,1],n[,2]), "%d/%m/%Y %H:%M:%S"),n[,8], type='l',col="red")
points(strptime(paste(n[,1],n[,2]), "%d/%m/%Y %H:%M:%S"),n[,9], type='l',col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty =1, col=c("black", "red", "blue"))

plot( strptime(paste(n[,1],n[,2]), "%d/%m/%Y %H:%M:%S"),n[,4], type='l', ylab="Global_reactive_power", xlab='')
