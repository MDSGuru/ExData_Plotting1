#Exploratory Data Analysis
#Course Project 1
#Individual household electric power consumption Plots
#Plot 2:  Global Active Power Usage

#Read in Data
setwd("C:\\Users\\Kristeen.Kratz\\Documents\\DataScience_Training\\ExploratoryDataAnalysis\\Project1")
RawData<-read.table(".\\household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")

#Create combined DateTime field
library(lubridate)


RawData$DateTime<-dmy(RawData$Date)+hms(RawData$Time)

#Keep the subset of requested dates
DataSub<-subset(RawData, Date == "1/2/2007"|Date == "2/2/2007")

#Create the 

png("Plot2.png", width=480, height=480)
plot(DataSub$DateTime, DataSub$Global_active_power, type="l", 
     xlab="", ylab="Global Active Power (kilowatts)")
dev.off()