fp <- file(".//data//household_power_consumption.txt")
rawData <- read.table(fp, header = TRUE, sep = ";",  na.strings = "?")
rawData$Date <- as.Date(rawData$Date, format = "%d/%m/%Y")
analysisData <- subset(rawData, (Date >= "2007-02-01" & Date <= "2007-02-02"))
analysisData$DateTime <- as.POSIXct(paste(analysisData$Date, analysisData$Time), format="%Y-%m-%d %H:%M:%S")





