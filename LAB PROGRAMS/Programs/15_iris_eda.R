# Program 15: Perform EDA on iris dataset: dimensions, summary, standard deviation, quantiles, grouping by Species, pivot table, categorical grouping with Sepal.Length categories.

data(iris)
print(dim(iris))
print(summary(iris))

# Standard deviation of numeric columns
print(sapply(iris[, 1:4], sd))

# Quantiles of Sepal.Length
print(quantile(iris$Sepal.Length))

# Mean of all variables grouped by Species
print(aggregate(. ~ Species, data = iris, FUN = mean))

# Categorical grouping of Sepal.Length
iris$Sepal.Cat <- cut(iris$Sepal.Length,
                      breaks = c(4, 5.5, 6.5, 8),
                      labels = c("Short", "Medium", "Long"))

# Pivot table: Species vs Sepal.Length category
pivot <- table(iris$Species, iris$Sepal.Cat)
print(pivot)
