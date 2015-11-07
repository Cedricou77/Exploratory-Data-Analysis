#import data set
consoelec=read.table("C:/Users/Cedric/Downloads/consommation-electricité.txt",sep=";",dec=".",header=TRUE)
#format data time
consoelec$Date=as.Date(consoelec$Date,format = "%d/%m/%Y")
consoelec$Time=as.character(consoelec$Time)
consoelec$Time=paste(consoelec$Date, consoelec$Time)
consoelec$Time=strptime(consoelec$Time, "%Y-%m-%d %H:%M:%S")
#Built PLOT 1
hist(consoelec$Global_active_power,col="RED",main="Global Active Power",xlab = "Global Active Power (kilowatts)",ylab="Frequency")
png(filename = "Plot1.png", width = 480, height = 480)
dev.off()