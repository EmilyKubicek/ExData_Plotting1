#####Plot 4
png(filename="plot4.png")
par(mfrow=c(2,2))
plot(dset2$datetime, dset2$globalactivepower, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")

plot(dset2$datetime, dset2$voltage, type = "l", ylab = "Voltage",
     xlab = "datetime")

plot(dset2$datetime, dset2$subm1, type = "n",
     ylab = "Energy sub metering", xlab = "") +
     lines(dset2$datetime,dset2$subm1, type="l", col="black") +
     lines(dset2$datetime,dset2$subm2, type = "l", col = "red") +
     lines(dset2$datetime,dset2$subm3, type = "l", col = "blue")
legend("topright",lty=1,col=c("black","red","blue"),legend = c("Sub_metering_1",
                                                               "Sub_metering_2",
                                                               "Sub_metering_3"),bty = "n")

plot(dset2$datetime,dset2$globalreactivepower, type = "l",
     xlab = "datetime", ylab = "Global_reactive_power")
dev.off()