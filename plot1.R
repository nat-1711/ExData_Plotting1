### Course Poroject - Exploratory analysis ###


setwd("C:/Users/natal/OneDrive/Escritorio/Coursera/Data")

data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?", 
                 colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
# read data and we specified classes
graph_data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ] #subset data


## Plot 1

with(graph_data, hist(Global_active_power,
                      col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)"))
dev.copy(png, file = "plot1.png" ) #default for width and height are 480 as specified in the instructions
dev.off()