data<-read.table("household_power_consumption.txt", sep=";", header=TRUE) #read table car c'est un fichier text
mydata<-data%>%filter(Date%in%c("2/2/2007", "1/2/2007"))
mydata$Global_active_power<-as.numeric(mydata$Global_active_power)
#plot1

png("plot1.png", width=480, height=480)
hist(mydata$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()

