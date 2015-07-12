source(".//data.R")
#The required data set is in analysisData

plot(analysisData$DateTime,analysisData$Global_active_power,type="n", xlab="", ylab="Energy sub metering", ylim=c(0,40))
points(analysisData$DateTime, analysisData$Sub_metering_1, col="black", type="l")
points(analysisData$DateTime, analysisData$Sub_metering_2, col="red", type="l")
points(analysisData$DateTime, analysisData$Sub_metering_3, col="blue", type="l")
legend("topright", inset=c(0.05,0), cex=0.5, bty="n", col=c("black","red","blue"),lty=c(1,1,1), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()
