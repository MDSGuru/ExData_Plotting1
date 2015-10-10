#Exploratory Data Analysis
#Course Project 1
#Individual household electric power consumption Plots
#Plot 1:  Histogram Global Active Power

#Read in Data
setwd("C:\\Users\\Kristeen.Kratz\\Documents\\DataScience_Training\\ExploratoryDataAnalysis\\Project1")
RawData<-read.table(".\\household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")

#Create combined DateTime field
library(lubridate)


RawData$DateTime<-dmy(RawData$Date)+hms(RawData$Time)

#Keep the subset of requested dates
DataSub<-subset(RawData, Date == "1/2/2007"|Date == "2/2/2007")

#Create the Histogram

png("Plot1.png", width=480, height=480)
hist(DataSub$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()