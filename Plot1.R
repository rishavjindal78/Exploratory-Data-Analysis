# Exploratory Data Analysis - Assignment 2 - Q. #1

# Loading provided datasets - loading from local machine
NEI <- readRDS("summarySCC_PM25.rds")


aggTotals <- aggregate(Emissions ~ year,NEI,sum)

# Generate the graph in the same directory as the source code
png(filename='plot1.png', width=480, height=480, units='px')


# Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
# Using the base plotting system, make a plot showing the total PM2.5 emission from all sources 
# for each of the years 1999, 2002, 2005, and 2008.

barplot((aggTotals$Emissions)/10^6,names.arg = aggTotals$year,xlab = "Year",ylab = "PM2.5 Emissions (10^6 Tons)",main = "Total Emissions From All US Sources")

dev.off()