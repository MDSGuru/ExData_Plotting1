#Exploratory Data Analysis
#Course Project 1
#Individual household electric power consumption Plots
#Plot 3: Energy Metering

#Read in Data
setwd("C:\\Users\\Kristeen.Kratz\\Documents\\DataScience_Training\\ExploratoryDataAnalysis\\Project1")
RawData<-read.table(".\\household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")

#Create combined DateTime field
library(lubridate)


RawData$DateTime<-dmy(RawData$Date)+hms(RawData$Time)

#Keep the subset of requested dates
DataSub<-subset(RawData, Date == "1/2/2007"|Date == "2/2/2007")

#Create the 

png("Plot3.png", width=480, height=480)
plot(DataSub$DateTime, DataSub$Sub_metering_1, type="l", 
     xlab="", ylab="Energy Sub Metering")
lines(DataSub$DateTime, DataSub$Sub_metering_2, col="red")
lines(DataSub$DateTime, DataSub$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1)
dev.off()