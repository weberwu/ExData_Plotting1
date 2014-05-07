#load and filter data
data <- read.table('household_power_consumption.txt',header=TRUE,sep=";",na.strings="?")
data<- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]

#set device and plot
png(filename="plot1.png")

hist(data$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

dev.off()
