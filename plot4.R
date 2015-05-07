source('Mylib.R')

subPowerData <- MyLib_Load()

# Create png dev
png(filename='plots/plot4.png')

# Make plots

env <- par()
par(mfrow=c(2,2))
plot(x=(subPowerData$DateTime),y=subPowerData$Global_active_power,type="l",ylab="Global Active Power",xlab="")
plot(x=(subPowerData$DateTime),y=subPowerData$Voltage,type="l",ylab="Voltage",xlab="datetime")
plot(x=(subPowerData$DateTime),y=subPowerData$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
lines(x=(subPowerData$DateTime),y=subPowerData$Sub_metering_2,col="red")
lines(x=(subPowerData$DateTime),y=subPowerData$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="l",col=c("black","red","blue"),lwd=2,cex=0.5)
plot(subPowerData$DateTime, subPowerData$Global_reactive_power, type = "l", main = "", xlab = "datetime", ylab = "Global_reactive_power")
par(env)
# Turn off device
dev.off()

