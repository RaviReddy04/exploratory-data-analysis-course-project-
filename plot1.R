
my_data <- file.path(getwd(),"household_power_consumption.txt")
my_data <- read.table(my_file, header = TRUE, sep = ";", dec = ".", stringsAsFactors = FALSE)
subSetData <- my_data[my_data$Date %in% c("1/2/2007","2/2/2007") ,]


png("plot1.png" ,  width=480, height=480)
hist(as.numeric(subSetData$Global_active_power), col = "red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()


