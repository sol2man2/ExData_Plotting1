
hpc <- read.table(file="household_power_consumption.txt", sep=";", head=TRUE, stringsAsFactors = FALSE)
hpc$seq <- strptime(paste(hpc$Date,hpc$Time),format="%d/%m/%Y %H:%M:%S")
hpc$Date <- as.Date(hpc$Date,format="%d/%m/%Y") 
hpc <- subset(hpc, Date==as.Date("2007-02-01") | Date==as.Date("2007-02-02"))
hpc$Global_active_power <- as.double(hpc$Global_active_power)

png('plot2.png')
plot(hpc$seq,hpc$Global_active_power,type="l")
dev.off()
