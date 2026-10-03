# Program 21: Randomly split iris dataset into train/test (80/20), build logistic regression (Species ~ Petal.Length + Petal.Width), predict, and evaluate with confusion matrix.

library(nnet)
data(iris)

# Split into train (80%) and test (20%)
set.seed(123)
idx <- sample(1:nrow(iris), 0.8 * nrow(iris))
train <- iris[idx, ]
test <- iris[-idx, ]

# Logistic regression model
model <- multinom(Species ~ Petal.Length + Petal.Width,
                  data = train, trace = FALSE)

# Predict and evaluate
pred <- predict(model, test)
cm <- table(Predicted = pred, Actual = test$Species)
print(cm)

accuracy <- sum(diag(cm)) / sum(cm)
print(paste("Accuracy:", round(accuracy, 4)))
