source(".//data.R")
#The required data set is in analysisData

hist(analysisData$Global_active_power, main="Global Active Power", xlab="Global active power (kilowatts)", col="red")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()
