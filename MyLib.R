
if(!exists('MyLib_R'))
{
  
  MyLib_R <- T
  
  MyLib_R_initDirectories <- function()
  {
    #check if directory exists
    if (!file.exists("data"))
    {
      dir.create("data")
    }
    if (!file.exists("plots"))
    {
      dir.create("plots")
    }
    
    #check if dataset exists if not download and unzip
    if (!file.exists("data/dataset.zip"))
    {
      message("Downloading Dataset")
      download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","data/dataset.zip")
      message("Unzipping dataset")
      unzip("data/dataset.zip", exdir= "./data")
    }
  }
  
  
  
  
  MyLib_Load <- function ()
  {
    message("Loading Data ")
    MyLib_R_initDirectories()
    
    message("Reading  Data ")
    # Read data 
     powerData <- read.table('./data/household_power_consumption.txt', header=TRUE,
                           sep=';', na.strings='?',
                           colClasses=c('character','character','numeric','numeric','numeric','numeric','numeric','numeric'))
    # Convert dates and times
    powerData$DateTime  <- paste(powerData$Date, powerData$Time)
    powerData$Date <- as.Date(powerData$Date, format="%d/%m/%Y")

    #Subset observations for  Feb 1st and Feb 2nd 2007.
    sub <-subset(powerData, Date==as.Date("2007-02-01")|Date==as.Date("2007-02-02"))
    
    sub$DateTime <-  as.POSIXlt(sub$DateTime,format="%d/%m/%Y %H:%M:%S")
    
    
     sub
  }
  
  
  MyLib_ClearWS <- function()
  {
    rm(list=ls())
  }
  
  
}