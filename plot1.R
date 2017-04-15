hist(data1$Global_active_power, type = "l", col= "red")
dev.copy(png, "plot1.jpg", width = 480, heigh = 480)
dev.off()
