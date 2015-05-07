source('Mylib.R')

subPowerData <- MyLib_Load()


# Create png dev
png(filename='plots/plot2.png')

# Make plot
plot(subPowerData$DateTime, subPowerData$Global_active_power,
     ylab='Global Active Power (kilowatts)', xlab='', type='l')

# Turn off device
dev.off()