source('Mylib.R')

subPowerData <- MyLib_Load()


# # Create png dev
png(filename='plots/plot1.png')

# Make Hisotgram
hist(subPowerData$Global_active_power, main='Global Active Power', 
     xlab='Global Active Power (kilowatts)', col='red', ylab ='Frequency')

# Turn off device
dev.off()