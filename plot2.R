#library(dplyr)
#plot2
data<-read.table("household_power_consumption.txt", sep=";", header=TRUE) #read table car c'est un fichier text
mydata<-data%>%filter(Date%in%c("2/2/2007", "1/2/2007"))
date_j <- strptime(paste(mydata$Date, mydata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(mydata$Global_active_power)
png("plot2.png", width=480, height=480)
plot(date_j, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
#different way to plot this
#with(mydata,plot(date_j, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
