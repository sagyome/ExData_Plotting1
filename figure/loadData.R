setwd("C:\\Users\\sagio\\Documents\\statistics\\coursera - data analysis\\assginment1")
data<-read.table("household_power_consumption.txt", sep=";",header=T)
data1<-lapply(lapply(data[3:9],as.character),as.numeric)
data[,3:9]<-data1
rm(data1)
dateTime<-paste(data$Date,data$Time,sep=" ")
data$dateTime<-strptime(dateTime,format="%d/%m/%Y %H:%M:%S")
data<-data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
rm(dateTime)