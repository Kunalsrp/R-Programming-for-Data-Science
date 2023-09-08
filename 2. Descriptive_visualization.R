
# VISUALISATION USING R 

ages= c(21,30,50,40,80,90,55,60,70,44)
plot(ages)

salary = c(21000,30000,22000,10000,70000,30000,34000,57000,23000,12000)
plot(salary)

plot(ages,salary) # 1st - x axis 2nd - Y axis
plot(salary,ages)

help(plot)
##################################################################



airquality =datasets :: airquality
airquality

head(airquality,10) # top 10 rows
tail(airquality,10)
names(airquality)   #name of all columns

airquality[,c(1,2)] #all rows and first two columns
df = airquality[,-6]  # excludes column no 6
df

summary(airquality[,1]) # summary statistics of the wind colun 
summary(airquality$Temp)

airquality$Wind  # displays column values

summary(airquality) # summary for all columns

########################################################

plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality) #scatterplot
help(plot)
plot(airquality$Ozone,airquality$Month)
plot(airquality$Month,airquality$Ozone)
 
#points and lines
plot(airquality$Wind, type ="p") # p: points, l:line, b: both
plot(airquality$Wind, type ="l")
plot(airquality$Wind, type ="b")

help(plot)

plot(airquality$Wind,
     xlab = "Ozone Concentration",
     ylab = "No.of Instances",
     main = "Ozone levels in NY city",
     col ="red",
     type = "l")

plot(airquality,col="red") #plot of entire dataset

plot(airquality$Ozone,airquality$Solar.R)
plot(airquality$Solar.R,airquality$Ozone)

#Horizontal Bar plot

barplot(airquality$Ozone,
        main = "Ozone conc. of air",
        ylab = "ozone levels",
        col = "blue",
        horiz = T,
        axes = F)

help(barplot)

# HISTOGRAM

hist(airquality$Temp)

hist(airquality$Temp,
     main = "Solar Radiation values in air",
     xlab = "Solar rad",
     col = "blue",
     border = "red")

help(hist)

#BOXPLOT
help(boxplot)

boxplot(airquality$Wind,
        main = "BOXPLOT",
        col = "blue",
        border = "red",
        horizontal = T)

#we directly get values of outliers

boxplot.stats(airquality$Wind)$out

airquality$Wind

#Multiple Box plots

boxplot(airquality[,1:4],
        main = "Multiple BOXPLOT",
        col = "pink",
        horizontal = T)

boxplot.stats(airquality)$out


# GRID FORMATION SO AS TO PLOT MULTIPLE PLOTS
help(par)
par(mfrow = c(3,3), mar = c(1,2,1,2), las = 0, bty ="n")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type = "l")
plot(airquality$Wind, type = "l")
plot(airquality$Solar.R, type = "l")
barplot(airquality$Ozone,
        main = "Ozone conc. of air",
        ylab = "ozone levels",
        col = "blue",
        horiz = T,
        axes = F)


hist(airquality$Temp,
     main = "Solar Radiation values in air",
     xlab = "Solar rad",
     col = "blue",
     border = "red")
hist(airquality$Temp)
boxplot(airquality$Wind,
        main = "BOXPLOT",
        col = "blue",
        border = "red",
        horizontal = T)

airquality
max(airquality$Wind)
min(airquality$Temp)
min(airquality$Solar.R)
mean(airquality$Solar.R) #due to presence of NA value it does not give output
mean(airquality$Wind)

mean(airquality$Solar.R,na.rm=T) # na.rm is used to remove NA values
median(airquality$Ozone)
median(airquality$Ozone, na.rm=T)
min(airquality$Ozone)
min(airquality$Ozone, na.rm =T)


#Variance

var(airquality$Wind)

#Std deviation
sd(airquality$Ozone, na.rm=T)

skewness(airquality$Ozone) #error due to moments package not installed

kurtosis(airquality$Ozone) #error

skewness(airquality$Ozone, na.rm=T)

kurtosis(airquality$Ozone, na.rm=T)

# DENSITY PLOT

plot(density(airquality$Wind))
plot(density(airquality$Wind),na.rm =T)

??density #checks Kernal Density Estimation

## IN class Exercise