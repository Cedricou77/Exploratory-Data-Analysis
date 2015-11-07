#Built PLOT 3
plot(consoelec$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering",xaxt = "n")
lines(consoelec$Sub_metering_2,col="red")
lines(consoelec$Sub_metering_3,col="blue")
axis(1,at=seq(from =1, by=1440,length=3),labels=c("Thu","Fri","Sat"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), col = c("black", "red","blue"),pch="_",pt.cex = 2,cex = 0.8)
png(filename = "Plot3.png", width = 480, height = 480)
dev.off()