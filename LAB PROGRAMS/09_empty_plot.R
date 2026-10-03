# Program 9: Create empty plots with specified axis limits.

suppressWarnings(rm(c))
plot(1, type = "n", xlim = c(0, 10), ylim = c(0, 20),
     xlab = "X Axis", ylab = "Y Axis", main = "Empty Plot")
