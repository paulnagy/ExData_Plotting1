

n<-read.table("./household_power_consumption.txt", header=TRUE, sep=";", skip=(1440*46+396), nrow=2880)
plot( strptime(paste(n[,1],n[,2]), "%d/%m/%Y %H:%M:%S"),n[,3], type='l', ylab="Global Active Power (kilowatts)", xlab='')
dev.copy(png,'plot2.png', width=480, height=480)
dev.off()