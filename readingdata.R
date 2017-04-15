
# Read table from the text file
sampledata <-read.table("C:/Users/Abel/Desktop/ProgrammingAssignment2/household_power_consumption.txt", header = TRUE)

#select datas of chosen dates (2007-02-01 and 2007-02-02)
data1 <- sampledata[as.character(sampledata$Date) == "1/2/2007" | as.character(sampledata$Date) == "2/2/2007",]

#create new variable to combine date and time

data1$newtime <- strptime( paste (as.character(data1$Date), as.character(data1$Time)),  "%d/%m/%Y %H:%M:%S")

#change non numeric elements to numeric. This also eliminate "?" as NA
data1$Global_active_power <- as.numeric(as.character(refineddata$Global_active_power))
data1$Global_reactive_power <- as.numeric(as.character(refineddata$Global_reactive_power))
data1$Sub_metering_2 <- as.numeric(as.character(refineddata$Sub_metering_2))
data1$Sub_metering_1 <- as.numeric(as.character(refineddata$Sub_metering_1))
data1$Sub_metering_3 <- as.numeric(as.character(refineddata$Sub_metering_3))
data1$Voltage <- as.numeric(as.character(refineddata$Voltage))
