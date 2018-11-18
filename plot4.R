
#library(dplyr)
data<-read.table("household_power_consumption.txt", sep=";", header=TRUE) #read table car c'est un fichier text
mydata<-data%>%filter(Date%in%c("2/2/2007", "1/2/2007"))
mydata$Global_reactive_power<-as.numeric(mydata$Global_reactive_power)

png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 
plot(date_j, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(date_j,mydata$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(date_j, sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(date_j, sub_metering_2, type="l", col="red")
lines(date_j, sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(date_j, mydata$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
