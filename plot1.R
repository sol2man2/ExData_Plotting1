
hpc <- read.table(file="household_power_consumption.txt", sep=";", head=TRUE, stringsAsFactors = FALSE)
hpc$Date <- as.Date(hpc$Date,format="%d/%m/%Y") 
hpc <- subset(hpc, Date==as.Date("2007-02-01") | Date==as.Date("2007-02-02"))
hpc$Global_active_power <- as.double(hpc$Global_active_power)

png('plot1.png')
hist(hpc$Global_active_power,col="red")
dev.off()
