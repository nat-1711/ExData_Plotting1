### Course Poroject - Exploratory analysis ###


setwd("C:/Users/natal/OneDrive/Escritorio/Coursera/Data")

data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?", 
                 colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
# read data and we specified classes
graph_data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ] #subset data


## Plot 3
with(graph_data, plot(datetime, Sub_metering_1, type = "l", col = "black", ylab = "Energy sub metering", xlab = " "))
with(graph_data, lines(datetime, Sub_metering_2, col = "red"))
with(graph_data, lines(datetime, Sub_metering_3, col = "blue"))
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1, cex = 0.7)
dev.copy(png, file = "plot3.png" ) #default for width and height are 480 as specified in the instructions
dev.off()