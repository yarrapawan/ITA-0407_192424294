# Program 17: Explore Titanic dataset: bar chart of survival vs class, modify plot by gender, histogram of Age.

data(Titanic)
titanic_df <- as.data.frame(Titanic)

class_surv <- xtabs(Freq ~ Class + Survived, data = titanic_df)
sex_surv <- xtabs(Freq ~ Sex + Survived, data = titanic_df)
age_surv <- xtabs(Freq ~ Age + Survived, data = titanic_df)
print(class_surv)

par(mfrow = c(1, 3))
barplot(t(class_surv), beside = TRUE, legend.text = TRUE,
        main = "Survival vs Class",
        xlab = "Class", ylab = "Count")
barplot(t(sex_surv), beside = TRUE, legend.text = TRUE,
        main = "Survival vs Gender",
        xlab = "Gender", ylab = "Count")
barplot(t(age_surv), beside = TRUE, legend.text = TRUE,
        main = "Survival vs Age",
        xlab = "Age", ylab = "Count")
par(mfrow = c(1, 1))
