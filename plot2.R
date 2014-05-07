#load and filter data
data <- read.table('household_power_consumption.txt',header=TRUE,sep=";",na.strings="?")
data<- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]

#set device and plot
png(filename="plot2.png")

plot(strptime(paste(data$Date,data$Time,sep=" "), "%d/%m/%Y %H:%M:%S"),data$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")

dev.off()
