source("loadData.r")
hist(data$Global_active_power, col = "red",main="Global Active Power",xlab="Global Active Power (Kilowatts)",ylim=c(0,1300))
