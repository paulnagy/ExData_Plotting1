
n<-read.table("./household_power_consumption.txt", header=TRUE, sep=";", skip=(1440*46+396), nrow=2880)
plot( strptime(paste(n[,1],n[,2]), "%d/%m/%Y %H:%M:%S"),n[,7], type='l', ylab="Energy sub metering", xlab='')
points(strptime(paste(n[,1],n[,2]), "%d/%m/%Y %H:%M:%S"),n[,8], type='l',col="red")
points(strptime(paste(n[,1],n[,2]), "%d/%m/%Y %H:%M:%S"),n[,9], type='l',col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty =1, col=c("black", "red", "blue"))
dev.copy(png,'plot3.png', width=480, height=480)
dev.off()
