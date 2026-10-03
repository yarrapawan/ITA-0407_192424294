# Program 19: Build a regression model on advertising dataset (Sales ~ Spend) and predict Sales.

advertising <- data.frame(
  Spend = c(10, 15, 20, 25, 30, 35, 40, 45, 50, 55),
  Sales = c(25, 31, 38, 42, 50, 55, 63, 66, 74, 80)
)

model <- lm(Sales ~ Spend, data = advertising)
print(summary(model))

# Predict Sales for new Spend values
new_data <- data.frame(Spend = c(60, 70))
predicted_sales <- predict(model, new_data)
print(predicted_sales)

# Plot data and regression line
plot(advertising$Spend, advertising$Sales, pch = 19,
     xlab = "Spend", ylab = "Sales", main = "Sales vs Spend")
abline(model)
