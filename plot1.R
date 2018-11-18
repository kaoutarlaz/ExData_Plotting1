data<-read.table("household_power_consumption.txt", sep=";", header=TRUE) #read table car c'est un fichier text
mydata<-data%>%filter(Date%in%c("2/2/2007", "1/2/2007"))
mydata$Global_active_power<-as.numeric(mydata$Global_active_power)
#plot1

with(mydata,hist(Global_active_power,col=c("red"), xlab=" global active power (kilowatts)"))

