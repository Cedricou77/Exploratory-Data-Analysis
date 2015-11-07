#Built PLOT 4
par(mfrow=c(2,2))

plot(consoelec$Global_active_power,type="l",xaxt = "n",xlab="",ylab="Global Active Power",cex.lab = 0.8)
axis(1,at=seq(from =1, by=1440,length=3),labels=c("Thu","Fri","Sat"))

plot(consoelec$Voltage,type="l",xaxt = "n",xlab="datetime",ylab="Voltage",cex.lab = 0.8)
axis(1,at=seq(from =1, by=1440,length=3),labels=c("Thu","Fri","Sat"))

plot(consoelec$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering",xaxt = "n",cex.lab = 0.8)
lines(consoelec$Sub_metering_2,col="red")
lines(consoelec$Sub_metering_3,col="blue")
axis(1,at=seq(from =1, by=1440,length=3),labels=c("Thu","Fri","Sat"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),bty = "n", col = c("black", "red","blue"),pch="_",pt.cex = 2,cex = 0.8)

plot(consoelec$Global_reactive_power,type="l",xlab="Datetime",ylab="Global Reactive Power",xaxt = "n",cex.lab = 0.8)
axis(1,at=seq(from =1, by=1440,length=3),labels=c("Thu","Fri","Sat"))

png(filename = "Plot4.png", width = 480, height = 480)
dev.off()