# Program 16: Explore USArrests dataset: summary statistics, state with largest rape arrests, max & min murder rates, correlation among features, states above median assault arrests and bottom 25% for murder, visualization with histogram, density, scatterplots, bar graphs.

data(USArrests)
print(summary(USArrests))

# State with the largest rape arrests
print(rownames(USArrests)[which.max(USArrests$Rape)])

# Maximum and minimum murder rates
print(rownames(USArrests)[which.max(USArrests$Murder)])
print(max(USArrests$Murder))
print(rownames(USArrests)[which.min(USArrests$Murder)])
print(min(USArrests$Murder))

# Correlation among features
print(cor(USArrests))

# States above median assault arrests
above_median <- USArrests$Assault > median(USArrests$Assault)
print(rownames(USArrests)[above_median])

# States in the bottom 25% for murder
q25 <- quantile(USArrests$Murder, 0.25)
low_murder <- USArrests$Murder <= q25
print(rownames(USArrests)[low_murder])

# Visualization
par(mfrow = c(2, 2))
hist(USArrests$Murder, main = "Histogram of Murder",
     xlab = "Murder")
plot(density(USArrests$Assault), main = "Density of Assault")
plot(USArrests$Assault, USArrests$Murder,
     main = "Assault vs Murder",
     xlab = "Assault", ylab = "Murder")
barplot(USArrests$Murder, names.arg = rownames(USArrests),
        las = 2, cex.names = 0.5,
        main = "Murder Arrests by State")
par(mfrow = c(1, 1))
