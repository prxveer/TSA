rm(list = ls())

library(forecast)

year <- 1970:1990
population <- c(
  3929214, 5308483, 7239881, 9638453, 12860702,
  17063353, 23191876, 31443321, 38558371, 50189209,
  62979666, 76212168, 92228496, 106021537, 123202624,
  132164569, 151325798, 179323175, 203302031,
  226542203, 248709873
)

population_ts <- ts(population, start = 1970, frequency = 1)

plot(population_ts,
     main = "US Population Time Series",
     xlab = "Year",
     ylab = "Population")

population_sqrt <- sqrt(population_ts)

plot(population_sqrt,
     main = "Square Root Transformed Population",
     xlab = "Year",
     ylab = "Sqrt(Population)")

time_index <- time(population_ts)
trend_model <- lm(population_ts ~ time_index)

summary(trend_model)

estimated_trend <- trend_model$fitted.values

plot(population_ts,
     main = "US Population with Estimated Trend",
     xlab = "Year",
     ylab = "Population")
lines(estimated_trend, col = "red", lwd = 2)

detrended_population <- population_ts - estimated_trend

plot(detrended_population,
     type = "o",
     main = "Detrended US Population",
     xlab = "Year",
     ylab = "Population (Detrended)")

