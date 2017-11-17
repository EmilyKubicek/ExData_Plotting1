#####Plot 1
dset2$globalactivepower<-as.numeric(dset2$globalactivepower)
png(filename="plot1.png")
hist(dset2$globalactivepower,col="red",xlab="Global Active Power (kilowatts)",
     main = "Global Active Power")
dev.off()