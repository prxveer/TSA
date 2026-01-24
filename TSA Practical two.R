# (a) Write the R command to load the library in which the “Nottem” dataset is available
install.packages("dataset")

# (b) Write the R command to load the “Nottem” dataset into the R working environment
data("nottem")

# (c) Write the appropriate R command to view the description of the dataset and briefly explain the key characteristics of the data
?nottem

# (d) Explain the nature of the data in terms of its sampling frequency
frequency(nottem)

# (e) Plot the time series data and write your observations about the pattern of the data
plot(
  nottem,
  main = "Monthly Average Air Temperatures at Nottingham Castle",
  xlab = "Year",
  ylab = "Temperature (°F)",
  col = "red",
  lwd = 2
)
