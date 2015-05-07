source('Mylib.R')

subPowerData <- MyLib_Load()


# Create png dev
png(filename='plots/plot3.png')

# Make plots

plot(x=(subPowerData$DateTime),y=subPowerData$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
lines(x=(subPowerData$DateTime),y=subPowerData$Sub_metering_2,col="red")
lines(x=(subPowerData$DateTime),y=subPowerData$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="l",col=c("black","red","blue"),lwd=2,cex=0.8)

# Turn off device
dev.off()


