# Clear workspace
rm(list = ls())

# Load stats package (contains nottem)
library(stats)

# Load nottem dataset (LOWERCASE)
data(nottem)

# Convert to time series object
nottem_ts <- ts(nottem, start = c(1920, 1), frequency = 12)

# Plot original data
plot(nottem_ts,
     main = "Nottem Monthly Temperature Data",
     xlab = "Year",
     ylab = "Temperature")

# Decompose the time series
nottem_decomp <- decompose(nottem_ts)

# Plot decomposed components
plot(nottem_decomp)

# Display decomposition values
nottem_decomp

