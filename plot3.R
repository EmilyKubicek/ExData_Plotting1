#####Plot 3
dset2$subm1<-as.numeric(dset2$subm1)
dset2$subm2<-as.numeric(dset2$subm2)
dset2$subm3<-as.numeric(dset2$subm3)

png(filename="plot3.png")
plot(dset2$datetime, dset2$subm1, type = "n",
     ylab = "Energy sub metering", xlab = "") +
     lines(dset2$datetime,dset2$subm1, type="l", col="black") +
     lines(dset2$datetime,dset2$subm2, type = "l", col = "red") +
     lines(dset2$datetime,dset2$subm3, type = "l", col = "blue")
legend("topright",lty=1,col=c("black","red","blue"),legend = c("Sub_metering_1",
                                                               "Sub_metering_2",
                                                               "Sub_metering_3"))
dev.off()