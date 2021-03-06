#library(dplyr)
data<-read.table("household_power_consumption.txt", sep=";", header=TRUE) #read table car c'est un fichier text
mydata<-data%>%filter(Date%in%c("2/2/2007", "1/2/2007"))
sub_metering_1<- as.numeric(mydata$Sub_metering_1)
sub_metering_2 <- as.numeric(mydata$Sub_metering_2)
sub_metering_3 <- as.numeric(mydata$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(date_j, sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(date_j, sub_metering_2, type="l", col="red")
lines(date_j, sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()