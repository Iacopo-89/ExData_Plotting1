getwd()
file <- "C:/Users/Iacopo/Documents/household_power_consumption.txt"
data <- read.table(file, sep=";", header=TRUE, na.strings="?")
data <- data[grep("^1/2/2007$|^2/2/2007$",data$Date),]
data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")
Sys.setlocale(category = "LC_ALL", locale = "English_United States.1252")
plot(data$Date,data$Global_active_power, type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.copy(png,file="plot2.png")
dev.off()

