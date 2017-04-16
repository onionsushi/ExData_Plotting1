
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2))
with(data1, {
  plot(Global_active_power~as.POSIXct(newtime), type= "l", ylab = "Global Active Power (kilowatts)", xlab = "")
  plot(Voltage~as.POSIXct(newtime), type= "l", ylab = "Voltage (volt)", xlab = "")
  plot(Sub_metering_1~as.POSIXct(newtime), type= "l", ylab = "Global Active Power (kilowatts)", xlab = "")
  lines(Sub_metering_2~as.POSIXct(newtime), col = 'Red')
  lines(Sub_metering_3~as.POSIXct(newtime), col = 'Blue')
  legend("topright", col = c("black", "red", "blue"), lty = c(1, 1), lwd = c(1, 1), bty = "n", c("Sub_metering_1  ", "Sub_metering_2  ", "Sub_metering_3  "))
  plot(Global_reactive_power~as.POSIXct(newtime), type = "l", ylab = "Global Rective Power (kilowatts)", xlab = "")
})

dev.off()
