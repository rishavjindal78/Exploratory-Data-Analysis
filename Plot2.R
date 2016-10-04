# Exploratory Data Analysis - Assignment 2 - Q. #2

# Loading provided datasets - loading from local machine
NEI <- readRDS("summarySCC_PM25.rds")

# Subset data Baltimore City, Maryland (fips == "24510")
baltimore_city <- subset(NEI, fips == '24510')

aggTotalsBaltimorecity <- aggregate(Emissions ~ year,baltimore_city,sum)

# Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") 
# from 1999 to 2008? Use the base plotting system to make a plot answering this question.

# Generate the graph in the same directory as the source code
png(filename='plot2.png', width=480, height=480, units='px')

barplot(
        aggTotals$Emissions,
        names.arg = aggTotalsBaltimorecity$year,
        xlab = "Year",
        ylab="PM2.5 Emissions (Tons)",
        main = "Total PM2.5 Emissions From All Baltimore City Sources"
        )

dev.off()