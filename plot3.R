#load and filter data
data <- read.table('household_power_consumption.txt',header=TRUE,sep=";",na.strings="?")
data<- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]

#set device and plot
png(filename="plot3.png")

plot(strptime(paste(data$Date,data$Time,sep=" "), "%d/%m/%Y %H:%M:%S"),data$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
with(data,lines(strptime(paste(Date,Time,sep=" "), "%d/%m/%Y %H:%M:%S"),Sub_metering_1,type='l'))
with(data,lines(strptime(paste(Date,Time,sep=" "), "%d/%m/%Y %H:%M:%S"),Sub_metering_2,type='l',col='red'))
with(data,lines(strptime(paste(Date,Time,sep=" "), "%d/%m/%Y %H:%M:%S"),Sub_metering_3,type='l',col='blue'))
legend("topright",lty=c(1,1,1),col=c("black","red","blue"),legen=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()
