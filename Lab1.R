library(moments)
library(dplyr)

laptops <- read.csv("D:laptops.csv")
Prices_euros <- laptops$Price_euros

m <- mean(Prices_euros)
prod(Prices_euros, na.rm = TRUE)^(1/length(Prices_euros))
1/mean(1/Prices_euros)
median(Prices_euros)

var(Prices_euros, na.rm = TRUE)
sd(Prices_euros, na.rm = TRUE)
sd(Prices_euros) / mean(Prices_euros) * 100
IQR(Prices_euros, na.rm = TRUE) / 2
max(Prices_euros) - min(Prices_euros)

quantile(Prices_euros, na.rm = TRUE)
quantile(Prices_euros, p = seq(0, 1, 0.1), na.rm = TRUE)
summary(Prices_euros, na.rm = TRUE)

kurtosis(Prices_euros, na.rm = TRUE)
skewness(Prices_euros, na.rm = TRUE)

hist(Prices_euros, breaks = 25, 
     col = "darkmagenta",
     main = "Maximum cost of laptops",
     xlab = "Cost of laptops in euros",
     ylab = "Quantity"
     )

boxplot(Prices_euros,
        main = "Cost of laptops",
        ylab = "Quantity",
        col = "orange",
        border = "brown",
        horizontal = TRUE)