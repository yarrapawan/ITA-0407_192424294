# Program 20: Create multiple regression model using ChickWeight dataset with "Time" and "Diet" as predictors; predict weight and compute model error.

data(ChickWeight)
model <- lm(weight ~ Time + Diet, data = ChickWeight)
print(summary(model))

predicted <- predict(model, ChickWeight)
print(head(predicted))

mse <- mean((ChickWeight$weight - predicted)^2)
print(paste("Mean Squared Error:", round(mse, 2)))
