### Course Poroject - Exploratory analysis ###


setwd("C:/Users/natal/OneDrive/Escritorio/Coursera/Data")

data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?", 
                 colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
# read data and we specified classes
graph_data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ] #subset data


## Plot 2
graph_data$datetime <- strptime(paste(graph_data$Date, graph_data$Time), format = "%d/%m/%Y %H:%M:%S")
plot(graph_data$datetime, graph_data$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = " ")
#names of days are in Spanish
dev.copy(png, file = "plot2.png" ) #default for width and height are 480 as specified in the instructions
dev.off()