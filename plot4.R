source(".//data.R")
#The required data set is in analysisData
par(mfrow=c(2,2))
with (analysisData, {
  plot(analysisData$DateTime, analysisData$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
  plot(analysisData$DateTime, analysisData$Voltage, type="l", ylab="Voltage", xlab="datetime")
  
  plot(analysisData$DateTime,analysisData$Global_active_power,type="n", xlab="", ylab="Energy sub metering", ylim=c(0,40))
  points(analysisData$DateTime, analysisData$Sub_metering_1, col="black", type="l")
  points(analysisData$DateTime, analysisData$Sub_metering_2, col="red", type="l")
  points(analysisData$DateTime, analysisData$Sub_metering_3, col="blue", type="l")
  legend("topright", inset=c(0.05,0), cex=0.5, bty="n", col=c("black","red","blue"),lty=c(1,1,1), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
  
  plot(analysisData$DateTime, analysisData$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")
  
})

dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()
