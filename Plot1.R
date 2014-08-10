n<-read.table("./household_power_consumption.txt", header=TRUE, sep=";", skip=(1440*46+396), nrow=2880)
hist(as.numeric(n[,3]), main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.copy(png,'plot1.png', width=480, height=480)
dev.off()