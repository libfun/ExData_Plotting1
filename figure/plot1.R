library(data.table);
data <- fread("household_power_consumption.txt");
d1 <- data[as.Date(data$Date, format = "%d/%m/%Y") == as.Date("2007-02-01")];
d2 <- data[as.Date(data$Date, format = "%d/%m/%Y") == as.Date("2007-02-02")];
d <- rbind(d1, d2);
hist(as.numeric(d$Global_active_power), col = c("red"), main = "Global Active Power", xlab = "Global Active Power (kilowatts)");
dev.copy(png,'plot1.png');
dev.off();
