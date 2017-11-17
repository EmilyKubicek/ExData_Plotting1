#####Plot 2
dset2$globalactivepower<-as.numeric(dset$globalactivepower)
png(filename="plot2.png")
plot(dset2$datetime, dset2$globalactivepower, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()