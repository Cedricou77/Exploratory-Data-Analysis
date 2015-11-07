#Built PLOT 2
plot(consoelec$Global_active_power,type="l",xaxt = "n",xlab="",ylab="Global Active Power (kilowatts)")
axis(1,at=seq(from =1, by=1440,length=3),labels=c("Thu","Fri","Sat"))
png(filename = "Plot2.png", width = 480, height = 480)
dev.off()
