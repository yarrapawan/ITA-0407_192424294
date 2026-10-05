# Program 18: Create graphs in R: boxplot, histogram, bar plot, line chart, scatter plot.

x <- c(2, 4, 6, 8, 10, 12)
y <- c(3, 7, 5, 10, 8, 14)

par(mfrow = c(2, 3))
boxplot(y, main = "Boxplot")
hist(y, main = "Histogram", xlab = "Values")
barplot(y, names.arg = c("A", "B", "C", "D", "E", "F"),
        main = "Bar Plot")
plot(x, y, type = "l", main = "Line Chart")
plot(x, y, main = "Scatter Plot", pch = 19)
par(mfrow = c(1, 1))
