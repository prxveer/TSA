#(a) Entered the data into an Excel file. 

install.packages("openxlsx")

library(openxlsx)

Year <- seq(1790, 1990, by = 10)
US_Population <- c(
  3929214, 5308483, 7239881, 9638453, 12860702,
  17063353, 23191876, 31443321, 38558371, 50189209,
  62979666, 76212168, 92228496, 106021537, 123202624,
  132164569, 151325798, 179323175, 203302031,
  226542203, 248709873
)

population_df <- data.frame(
  Year = Year,
  Population = US_Population
)

write.xlsx(population_df, "US_Population.xlsx")

getwd()

#(b): Import the Excel file into R
library(readxl)
dataset <- read_excel("US_Population.xlsx")
View(dataset)

#(c) Call the suitable package from the R library for time series analysis.

install.packages("forecast")

library(stats)
library(forecast)

#(d): Convert dataset into a Time Series object

us_pop_ts <- ts(
  dataset$Population,
  start = 1790,
  end = 1990,
  frequency = 0.1
)

print(us_pop_ts)

#(e): Plot the data & identify dominating components

plot(
  us_pop_ts,
  main = "US Population Growth (1790–1990)",
  xlab = "Year",
  ylab = "Population",
  col = "blue",
  lwd = 2
)



