source(".//data.R")
#The required data set is in analysisData

plot(analysisData$DateTime, analysisData$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()
