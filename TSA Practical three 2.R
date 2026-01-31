rm(list = ls())

library(stats)

data(AirPassengers)

air_ts <- ts(AirPassengers, start = c(1949, 1), frequency = 12)

plot(air_ts,
     main = "AirPassengers Time Series",
     xlab = "Year",
     ylab = "Number of Passengers")

air_decomp <- decompose(air_ts)

plot(air_decomp)

air_decomp

