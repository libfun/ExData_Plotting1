library(data.table);
data <- fread("household_power_consumption.txt");
d1 <- data[as.Date(data$Date, format = "%d/%m/%Y") == as.Date("2007-02-01")];
d2 <- data[as.Date(data$Date, format = "%d/%m/%Y") == as.Date("2007-02-02")];
d <- rbind(d1, d2);
plot(as.numeric(d$Global_active_power), type = 'l', ylab = "Global Active Power (kilowatts)", xlab = "", xaxt = "n");
axis(1, at = c(0, 1450, 2900), labels = c("Thu", "Fri", "Sat"), las = 0, );
dev.copy(png,'plot2.png');
dev.off();
