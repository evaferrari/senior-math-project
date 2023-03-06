#Minneapolis Weather Data
minneapolis_max_temp <- c(38,46,61,74,81,96,93,92,85,80,75,52,39,47,73,85,87,99,96,91,90,79,67,58)
minneapolis_min_temp <- c(-9,-12,20,19,34,53,57,54,38,16,13,-5,1,-19,13,20,36,51,54,56,44,31,14,-7)
minneapolis_avg_temp <- c(20.6,21.1,37.7,45.1,58.7,72.8,76,73.1,61.3,43.6,38.6,25.3,22.1,11.7,40.5,47.7,60.2,76.8,76,74,66.5,55.6,37,24.5)
minneapolis_precip <- c(0.97,0.58,2.41,1.8,4.85,6.72,3.19,3.98,0.88,2.4,1.29,0.76,0.87,0.52,2.82,2.5,3.28,2.06,0.87,6.88,1.48,1.88,0.85,1.95)
minneapolis_avg_precip <- c(0.03,	0.02,	0.08,	0.06,	0.16,	0.22,	0.10,	0.13,	0.03,	0.08,	0.04,	0.02, 0.03,	0.02,	0.09,	0.08,	0.11,	0.07,	0.03,	0.22,	0.05,	0.06,	0.03,	0.06)
#Houston Weather Data
houston_max_temp <- c(81,81,90,92,95,97,101,102,99,94,87,81,78,82,86,88,91,99,99,99,97,92,85,85)
houston_min_temp <- c(34,32,42,47,56,66,73,71,54,42,37,30,31,13,39,43,58,68,70,73,57,47,43,40)
houston_avg_temp <- c(57.9,56.9,71,70.8,78,82.5,86.6,86.6,81,71.7,66,55.4,55.2,51.7,64.4,68.6,76.3,83.6,84,86,79.5,74.8,61.4,67.8)
houston_precip <- c(3.84,1.58,2.28,6.2,3.56,4.51,3.01,2.26,8.53,0.67,3.86,4.47,2.51,1.66,1.38,2.54,11.17,9.33,3.13,0.83,8.73,3.64,3.85,2.1)
#Data Frame Created
weatherdata <- data.frame(minneapolis_max_temp,minneapolis_min_temp,minneapolis_avg_temp,minneapolis_precip,houston_max_temp,houston_min_temp,houston_avg_temp,houston_precip,minneapolis_avg_precip)
#Graphs to compare Minneapolis and Houston Data
plot(weatherdata$minneapolis_max_temp, ylab = 'Temperature', xlab = 'Month', type = 'o', col = "Blue")
lines(weatherdata$houston_max_temp, type = 'o', col = "Green4")
plot(weatherdata$minneapolis_min_temp, ylab = 'Temperature', xlab = 'Month', type = 'o', col = "Blue")
lines(weatherdata$houston_min_temp, type = 'o', col = "Green4")
plot(weatherdata$minneapolis_avg_temp, ylab = 'Temperature', xlab = 'Month', type = 'o', col = "Blue")
lines(weatherdata$houston_avg_temp, type = 'o', col = "Green4")
win.graph(width = 12, height = 6, pointsize = 8)
plot(weatherdata$minneapolis_precip, ylab = 'Rainfall', xlab = 'Month', type = 'o', col = "Blue")
lines(weatherdata$houston_precip, type = 'o', col = "Green4")
win.graph(width = 12, height = 6, pointsize = 12)
plot(weatherdata$minneapolis_avg_precip, ylab = 'Rainfall', xlab = 'Month', type = 'o', main = 'Monthly Mean Precipitation in Minneapolis')
weatherdata

library(TSA)

#Data frame of 2 years of Minneapolis Weather Data
days <- (1:731)
mn_max <- c(36,37,36,30,38,36,32,17,36,24,16,20,28,32,24,6,25,26,12,18,20,37,33,32,33,30,27,22,22,27,34,38,46,32,24,30,32,30,20,27,30,30,35,1,15,36,24,35,26,14,14,37,42,44,42,38,31,25,28,39,50,36,43,42,44,39,53,61,48,42,43,43,39,35,40,39,44,45,40,34,36,43,44,50,47,51,60,48,49,60,54,55,61,40,45,56,60,70,56,42,49,61,44,37,30,35,48,49,67,50,60,50,67,59,66,71,68,74,62,62,68,78,75,67,60,59,66,60,49,60,48,55,58,63,73,71,63,53,66,71,77,66,66,71,78,78,81,78,79,66,68,77,91,90,83,86,81,77,85,96,83,72,79,76,71,78,88,91,90,86,77,75,84,76,77,80,85,87,86,86,82,88,88,89,90,90,92,86,88,93,82,85,84,85,85,79,80,84,90,91,83,83,82,69,80,92,88,86,84,85,84,82,84,82,73,74,79,78,79,83,83,87,79,84,74,88,85,78,84,78,81,83,83,87,84,91,89,90,92,88,82,77,78,74,71,82,76,74,78,83,64,52,50,60,59,64,73,79,81,71,58,62,71,74,77,83,84,76,85,70,67,58,64,64,56,51,52,56,70,80,71,68,80,66,69,64,63,62,50,45,53,36,34,33,36,35,36,32,29,32,34,50,38,45,55,39,58,75,74,66,75,74,72,66,32,37,31,35,37,36,41,34,53,54,42,39,41,36,36,36,36,37,50,40,29,37,43,41,43,40,35,34,39,52,48,38,32,27,21,25,29,30,42,34,38,39,44,46,7,17,23,24,24,22,24,23,23,26,36,38,34,33,25,23,18,29,36,38,39,35,35,33,23,23,21,37,34,15,20,29,23,21,15,21,24,33,33,29,24,34,33,11,3,-3,1,8,8,1,-4,-3,-4,0,12,9,16,19,22,28,41,39,38,36,41,47,38,26,47,50,46,46,48,62,58,62,50,48,45,59,48,36,35,43,53,51,57,63,59,59,45,53,48,47,45,73,55,36,44,61,71,77,85,71,74,65,53,48,55,49,37,49,52,60,61,64,40,43,43,64,52,50,46,55,54,63,67,61,87,72,68,60,55,62,58,58,63,56,63,69,71,68,75,75,79,74,77,74,81,83,80,87,86,66,56,61,65,62,78,79,84,91,97,99,93,96,96,96,97,90,87,97,88,83,89,89,91,81,74,69,76,88,90,87,76,83,84,84,88,89,86,87,94,96,82,66,73,78,81,87,83,87,75,84,86,87,88,90,90,85,85,95,93,92,90,93,93,85,80,88,81,82,86,85,83,85,73,79,86,88,84,82,80,86,85,85,88,90,90,90,75,80,91,82,84,73,76,83,81,83,79,78,69,64,78,78,81,79,75,75,82,79,72,77,72,78,88,78,78,90,76,67,71,74,61,69,82,78,82,85,82,79,73,73,73,75,75,71,73,79,71,71,65,64,56,55,64,69,79,74,60,51,50,52,49,53,57,53,49,58,59,49,44,43,46,52,60,67,62,56,56,54,44,39,34,34,36,45,42,32,42,44,38,30,54,50,26,34,41,39,52,45,51,50,43,35,38,28,16,23,40,30,30,36,41,41,58,43,20,23,31,29,21,25,39,43,29,31,34,21,10,27,22)
mn_min <- c(13,31,24,24,24,22,5,1,17,8,-1,9,15,17,-2,-9,-1,0,0,2,-2,19,30,29,27,25,21,18,18,18,27,27,31,20,10,11,11,13,-3,9,7,21,0,-11,-12,15,14,22,5,0,-6,12,18,27,23,28,19,15,17,16,32,30,30,24,30,23,32,44,30,23,34,31,26,23,21,27,28,37,32,20,20,30,32,37,37,29,37,38,33,30,34,34,40,25,19,29,43,49,36,30,27,34,29,23,21,19,24,29,39,36,36,29,43,37,43,42,45,52,46,42,44,53,54,46,40,47,48,44,35,34,38,39,34,48,52,45,52,49,50,54,59,57,58,60,58,65,66,63,60,54,49,47,63,65,63,62,60,60,62,74,68,59,57,58,53,55,62,67,65,68,63,63,62,61,59,58,59,69,65,67,66,70,73,74,69,71,75,73,71,73,71,66,65,64,66,62,59,63,71,68,68,65,62,57,59,69,71,68,64,67,63,63,60,65,60,57,54,60,61,66,69,68,64,60,63,68,61,57,63,63,58,62,68,68,66,70,71,72,76,72,65,59,59,59,58,57,55,52,54,61,50,45,41,38,44,55,52,56,65,52,43,42,45,52,58,60,60,60,59,57,52,49,48,47,43,38,39,32,46,48,51,44,56,50,48,50,51,42,33,33,35,29,27,29,31,32,24,24,25,20,16,30,31,30,33,26,27,33,43,42,49,60,54,32,27,21,22,13,29,24,24,19,30,39,26,22,29,23,32,34,28,27,32,22,17,16,19,26,23,19,31,30,29,27,32,28,26,19,10,11,15,19,26,20,20,22,21,7,-3,-5,10,14,7,3,14,9,12,10,12,19,16,24,21,15,12,18,22,19,26,30,33,23,19,19,3,2,8,1,9,15,11,10,9,9,17,24,28,22,18,16,7,2,-12,-16,-10,-8,-6,-10,-13,-12,-19,-17,-15,-3,7,2,-2,18,25,31,28,24,25,27,20,13,17,26,29,30,25,32,32,41,36,33,26,28,34,28,29,32,31,30,32,41,35,44,39,30,28,36,32,39,29,23,20,33,39,46,47,50,51,47,44,42,42,36,31,31,38,37,36,38,31,30,29,34,44,36,33,39,41,37,43,40,54,53,49,41,39,39,39,40,40,38,36,42,48,54,51,52,53,58,62,65,63,68,66,67,63,54,41,39,42,54,52,54,60,70,73,78,76,74,77,75,75,73,66,63,61,63,63,68,63,62,61,53,51,58,71,66,68,65,64,67,66,69,61,67,74,75,59,56,54,61,64,62,62,65,64,61,63,65,66,68,69,66,70,73,73,66,70,76,71,68,65,61,62,62,63,66,69,67,67,68,67,73,68,66,59,58,65,62,64,68,70,71,59,56,65,65,67,63,68,67,66,62,63,61,61,60,61,58,56,63,59,55,57,64,56,53,58,52,66,55,50,66,56,51,46,48,49,44,50,56,56,59,63,64,64,54,51,54,56,62,63,61,53,49,57,55,46,42,38,40,46,50,48,35,33,31,38,35,39,47,46,39,35,36,32,31,32,30,38,45,44,41,31,35,35,33,30,30,28,30,31,23,20,30,19,17,25,26,14,16,27,24,32,30,35,37,31,27,28,3,5,3,23,25,22,24,24,29,39,15,11,9,7,11,7,7,22,28,18,13,6,0,-7,6,1)
mndata <- data.frame(mn_max, mn_min,days)
mn_avg <- (mndata$mn_max+mndata$mn_min)/2
mndata_avg <- data.frame(days, mn_avg)
mndata_avg
win.graph(width = 12, height = 6, pointsize = 8)
plot(mndata$mn_max, ylab = 'Temp', xlab = 'Day', type = 'o', col = 'Red')
lines(mndata$mn_min, type = 'o', col = 'Blue')
win.graph(width = 12, height = 6, pointsize = 8)
plot(mn_avg,mndata$days, ylab = 'Avg Temp', xlab = 'Day', type = 'l', col = 'Black')
win.graph(width = 12, height = 6, pointsize = 8)
plot((mndata$mn_max-mndata$mn_min), ylab = 'Temp Dif', xlab = 'Day', type = 'o', col = 'Black')
mndata
mn_avg


#Harmonic TS of Minneapolis Avg Temperatures
mn_avg_temp <- ts(minneapolis_avg_temp, start=c(2020, 1), end=c(2021, 12), frequency=12)
mn_avg_temp
har = harmonic(mn_avg_temp,1)
model <- lm(mn_avg_temp~har)
summary(model)
win.graph(width = 12, height = 6, pointsize = 12)
plot(ts(fitted(model), freq=12, start=c(2020,1)),ylab='Average Temperature', main = 'Minneapolis Monthly Average Temperatures', type='l', ylim = range(c(fitted(model), mn_avg_temp)));points(mn_avg_temp)
confint(model, level = 0.95)

#Harmonic TS of Houston Monthly Avg Temperatures
tx_avg_temp <- ts(houston_avg_temp, start=c(2020, 1), end=c(2021, 12), frequency=12)
tx_avg_temp
har2 = harmonic(tx_avg_temp,1)
model2 <- lm(tx_avg_temp~har2)
summary(model2)
win.graph(width = 12, height = 6, pointsize = 12)
plot(ts(fitted(model2), freq=12, start=c(2020,1)),ylab='Average Temperature', main = 'Houston Monthly Average Temperatures',type='l', ylim = range(c(fitted(model2), tx_avg_temp)));points(tx_avg_temp)
confint(model2, level = 0.95)

#Harmonic TS of Minneapolis Max Temperatures
mn_max_temp <- ts(minneapolis_max_temp, start=c(2020, 1), end=c(2021, 12), frequency=12)
mn_max_temp
har4 = harmonic(mn_max_temp,1)
model4 <- lm(mn_max_temp~har)
summary(model4)
win.graph(width = 12, height = 6, pointsize = 8)
plot(ts(fitted(model4), freq=12, start=c(2020,1)),ylab='Average Maximum Temperature', type='l', ylim = range(c(fitted(model4), mn_max_temp)));points(mn_max_temp)
confint(model4, level = 0.95)

#Harmonic TS of Houston Max Temperatures
tx_max_temp <- ts(houston_max_temp, start=c(2020, 1), end=c(2021, 12), frequency=12)
tx_max_temp
har5 = harmonic(tx_max_temp,1)
model5 <- lm(tx_max_temp~har)
summary(model5)
win.graph(width = 12, height = 6, pointsize = 8)
plot(ts(fitted(model5), freq=12, start=c(2020,1)),ylab='Average Maximum Temperature', type='l', ylim = range(c(fitted(model5), tx_max_temp)));points(tx_max_temp)
confint(model5, level = 0.95)

#Harmonic TS of Minneapolis Min Temperatures
mn_min_temp <- ts(minneapolis_min_temp, start=c(2020, 1), end=c(2021, 12), frequency=12)
mn_min_temp
har6 = harmonic(mn_min_temp,1)
model6 <- lm(mn_min_temp~har)
summary(model6)
win.graph(width = 12, height = 6, pointsize = 8)
plot(ts(fitted(model6), freq=12, start=c(2020,1)),ylab='Average Minimum Temperature', type='l', ylim = range(c(fitted(model6), mn_min_temp)));points(mn_min_temp)
confint(model6, level = 0.95)

#Harmonic TS of Houston Min Temperatures
tx_min_temp <- ts(houston_min_temp, start=c(2020, 1), end=c(2021, 12), frequency=12)
tx_min_temp
har7 = harmonic(tx_min_temp,1)
model7 <- lm(tx_min_temp~har)
summary(model7)
win.graph(width = 12, height = 6, pointsize = 8)
plot(ts(fitted(model7), freq=12, start=c(2020,1)),ylab='Average Minimum Temperature', type='l', ylim = range(c(fitted(model7), tx_min_temp)));points(tx_min_temp)
confint(model7, level = 0.95)

#Graph comparing Harmonic TS of Minneapolis and Houston 
win.graph(width = 12, height = 6, pointsize = 12)
plot(ts(fitted(model), freq=12, start=c(2020,1)),ylab='Average Temperature', type='l', main = 'Cosine Time Series Trends of Minneapolis vs. Houston', col = 'Blue', ylim = range(c(fitted(model2), mn_avg_temp)));points(mn_avg_temp, col = 'Blue')
lines(ts(fitted(model2), freq=12, start=c(2020,1)),ylab='Average Temperature', type='l', col = 'Green3', ylim = range(c(fitted(model2), tx_avg_temp)));points(tx_avg_temp, col = 'Green3')

#Residual vs Time for Temp Means in Minneapolis
win.graph(width = 12, height = 6, pointsize = 12)
plot (y=rstudent(model), x=as.vector(time(minneapolis_avg_temp)), xlab = 'Time', ylab = 'Standardized Residuals', type = 'o', main = 'Residuals vs Time for Temperature Means in Minneapolis Jan 2020 - Dec 2021')
win.graph(width = 12, height = 6, pointsize = 12)
hist(rstudent(model), xlab = 'Standardized Residuals', main = 'Histogram of Residuals of Minneapolis Monthly Temperature Means')
win.graph(width = 12, height = 6, pointsize = 12)
qqnorm(rstudent(model))
win.graph(width = 12, height = 6, pointsize = 12)
acf(rstudent(model), main ='Autocorrelation of Residuals of Minneapolis Monthly Temperature Means')

#Residual vs Time for Temp Means in Houston
win.graph(width = 12, height = 6, pointsize = 12)
plot (y=rstudent(model2), x=as.vector(time(houston_avg_temp)), xlab = 'Time', ylab = 'Standardized Residuals', type = 'o', main = 'Residuals vs Time for Temperature Means in Houston Jan 2020 - Dec 2021')
win.graph(width = 12, height = 6, pointsize = 12)
hist(rstudent(model2), xlab = 'Standardized Residuals', main = 'Histogram of Residuals of Houston Monthly Temperature Means')
win.graph(width = 12, height = 6, pointsize = 12)
qqnorm(rstudent(model2))
win.graph(width = 12, height = 6, pointsize = 12)
acf(rstudent(model2), main ='Autocorrelation of Residuals of Houston Monthly Temperature Means')

#Graph comparing residual vs time of Minneapolis and Houston
win.graph(width = 12, height = 6, pointsize = 8)
plot (y=rstudent(model), x=as.vector(time(houston_avg_temp)), xlab = 'Time', ylab = 'Standardized Residuals', type = 'o', col = 'Blue', main = 'Comparing Residuals vs Time for Temperature Means in Minneapolis and Houston Jan 2020 - Dec 2021')
lines(y=rstudent(model2), x=as.vector(time(houston_avg_temp)), col = 'Green3', type = 'o')

#Graph predicting TX weather based on MN 
diff_avg_temp <- ts(houston_avg_temp - minneapolis_avg_temp, start=c(2020, 1), end=c(2021, 12), frequency=12)
diff_avg_temp
har3 = harmonic(diff_avg_temp,1)
model3 <- lm(diff_avg_temp~har3)
summary(model3)
win.graph(width = 12, height = 6, pointsize = 12)
plot(ts(fitted(model3), freq=12, start=c(2020,1)),ylab='Average Temperature Difference', main = 'Difference in Average Monthly Temperature of Houston Based on Minneapolis Weather', type='l', ylim = range(c(fitted(model3), diff_avg_temp)));points(diff_avg_temp)
confint(model3, level = 0.95)
win.graph(width = 12, height = 6, pointsize = 12)
plot (y=rstudent(model3), x=as.vector(time(diff_avg_temp)), xlab = 'Time', ylab = 'Standardized Residuals', type = 'o', main = 'Residuals vs Time for Difference in Temperature Means Jan 2020 - Dec 2021')
win.graph(width = 12, height = 6, pointsize = 12)
hist(rstudent(model3), xlab = 'Standardized Residuals', main = 'Histogram of Residuals of Difference of Monthly Temperature Means')
win.graph(width = 12, height = 6, pointsize = 12)
qqnorm(rstudent(model3))
win.graph(width = 12, height = 6, pointsize = 12)
acf(rstudent(model3), main ='Autocorrelation of Residuals of Difference of Monthly Temperature Means')


mn_monthlyavg_twentyyear <- c(20.0,	11.8,	27.5,	48.4,	59.6,	69.1,	75.9,	74.1,	60.9,	48.6,	46.3,	27.6,
                           24.6,	28.3,	24.9,	45.7,	54.6,	71.1,	77.0,	70.9,	65.5,	41.8,	33.0,	26.2,
                           15.3,	15.7,	31.3,	48.3,	57.7,	68.1,	73.7,	75.3,	62.5,	51.0,	32.1,	25.0,
                           11.2,	21.6,	36.0,	49.9,	56.6,	65.5,	72.2,	66.3,	67.4,	50.1,	37.7,	22.5,
                           15.6,	26.4,	31.8,	51.9,	56.4,	73.4,	76.8,	71.7,	66.3,	52.3,	36.6,	19.4,
                           28.6,	20.0,	33.6,	53.6,	61.9,	71.0,	79.6,	72.1,	59.6,	45.9,	36.8,	29.1,
                           19.6,	13.5,	38.4,	47.2,	64.1,	72.7,	76.0,	72.1,	64.8,	54.3,	34.5,	16.6,
                           13.2,	15.2,	28.3,	44.0,	56.3,	68.7,	75.5,	72.4,	63.6,	50.4,	34.7,	13.5,
                           8.3,	20.8,	32.2,	47.6,	60.8,	67.7,	70.0,	69.4,	66.5,	43.2,	42.7,	17.3,
                           13.0,	19.7,	41.0,	54.9,	60.7,	69.3,	76.3,	77.0,	60.2,	54.0,	35.3,	16.4,
                           12.0,	18.7,	29.4,	46.2,	58.4,	69.5,	78.8,	73.6,	62.9,	55.3,	39.2,	27.8,
                           23.3,	27.7,	48.3,	50.0,	63.7,	72.3,	80.2,	72.0,	63.9,	47.5,	37.1,	23.4,
                           16.9,	19.0,	27.2,	41.0,	58.3,	68.9,	75.0,	74.7,	67.2,	49.1,	33.2,	12.4,
                           8.0,	8.6,	25.5,	42.7,	58.6,	69.5,	71.5,	73.3,	62.7,	49.2,	25.4,	24.3,
                           19.0,	11.2,	35.5,	49.7,	59.2,	69.7,	73.4,	70.7,	67.9,	52.1,	41.4,	30.2,
                           17.6,	24.9,	41.3,	48.1,	61.3,	71.3,	75.2,	73.4,	66.1,	52.9,	44.1,	20.9,
                           20.9,	31.2,	34.0,	50.5,	58.5,	71.4,	75.3,	68.7,	67.3,	51.3,	34.1,	18.9,
                           16.6,	15.9,	32.4,	37.6,	67.8,	72.7,	75.0,	73.9,	65.1,	45.8,	28.2,	25.8,
                           14.3,	12.8,	28.5,	46.2,	55.6,	69.8,	75.4,	71.0,	66.7,	46.1,	30.8,	23.2,
                           20.6,	21.1,	37.7,	45.1,	58.7,	72.8,	76.0,	73.1,	61.3,	43.6,	38.6,	25.3,
                           22.1,	11.7,	40.5,	47.7,	60.2,	76.8,	76.0,	74.0,	66.5,	55.6,	37.0,	24.5)
mn_avgtemp <- ts(mn_monthlyavg_twentyyear, start=c(2001, 1), end=c(2021, 12), frequency=12)
mn_avgtemp
har9 = harmonic(mn_avgtemp,1)
model9 <- lm(mn_avgtemp~har9)
summary(model9)
win.graph(width = 12, height = 6, pointsize = 8)
plot(ts(fitted(model9), freq=12, start=c(2001,1)),ylab='Average Monthly Temperature', type='l', ylim = range(c(fitted(model9), mn_avgtemp)));points(mn_avgtemp)
confint(model9, level = 0.95)

#Monthly Means Rainfall in Minneapolis
mn_mean_precip <- ts(minneapolis_avg_precip, start = c(2020,1), end = c(2021,12), frequency = 12)
har10 = harmonic(mn_mean_precip,1)
model10 <- lm(mn_mean_precip~har10)
summary(model10)
win.graph(width = 12, height = 6, pointsize = 12)
#P value hypothesis testing suggest cosine model is significant 
plot(ts(fitted(model10), freq=12, start=c(2020,1)),ylab='Rainfall', main = 'Monthly Mean Precipitation in Minneapolis', type='l', ylim = range(c(fitted(model10), mn_mean_precip)));points(mn_mean_precip)
win.graph(width = 12, height = 6, pointsize = 12)
hist(rstudent(model10), xlab = 'Standardized Residuals')
win.graph(width = 12, height = 6, pointsize = 12)
qqnorm(rstudent(model10))
win.graph(width = 12, height = 6, pointsize = 12)
acf(rstudent(model10))
#model based on temp

#Monthly Rainfall Analysis
win.graph(width = 12, height = 6, pointsize = 12)
plot(weatherdata$minneapolis_precip, ylab = 'Rainfall', xlab = 'Month', type = 'o')
win.graph(width = 12, height = 6, pointsize = 12)
plot(weatherdata$houston_precip, ylab = 'Rainfall', xlab = 'Month', type = 'o')
win.graph(width = 12, height = 6, pointsize = 12)
acf(log(minneapolis_precip),xaxp = c(0,24,12))
win.graph(width = 12, height = 6, pointsize = 12)
acf(log(houston_precip))
win.graph(width = 12, height = 6, pointsize = 12)
qqnorm(log(minneapolis_precip));qqline(log(minneapolis_precip))
win.graph(width = 12, height = 6, pointsize = 12)
qqnorm(log(houston_precip));qqline(log(houston_precip))

