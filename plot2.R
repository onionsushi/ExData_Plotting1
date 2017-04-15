plot(data1$Global_active_power~as.POSIXct(data1$newtime), type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.copy(png, "plot2.jpg", width = 480, heigh = 480)
dev.off()
