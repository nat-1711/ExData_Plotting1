### Course Project - Exploratory analysis ###


setwd("C:/Users/natal/OneDrive/Escritorio/Coursera/CourseProject1_ExplAn/ExData_Plotting1") 
#set the directory where we downloaded the data  (new project folder)

data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?", 
                 colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
# read data and we specify classes
graph_data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ] #subset data


## Plot 4
par(mfrow = c(2,2), mar = c(4,4,2.6,1.9)) #set the way the graphs will be displayed and margins
with(graph_data, plot(datetime, Global_active_power, type = "l", ylab = "Global Active Power", xlab = " "))
#plot the first graph (topleft)
with(graph_data, plot(datetime, Voltage, type = "l"))
#plot second graph (topright)
with(graph_data, plot(datetime, Sub_metering_1, type = "l", col = "black", ylab = "Energy sub metering", xlab = " "))
with(graph_data, lines(datetime, Sub_metering_2, col = "red"))
with(graph_data, lines(datetime, Sub_metering_3, col = "blue"))
# initialize and then annotate the third graph (bottomleft)
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1, bty = "n", cex = 0.7)
#we remove the box from the legend and reduce the spacing in text
with(graph_data, plot(datetime, Global_reactive_power, type = "l"))
# plot the fourth graph (bottomright)
dev.copy(png, file = "plot4.png" ) #default for width and height are 480 as specified in the instructions
dev.off()