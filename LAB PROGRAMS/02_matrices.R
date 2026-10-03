# Program 2: Create labeled matrices (5x4, 3x3, 2x2) filled by row/column.

# 5x4 matrix filled by row
m1 <- matrix(1:20, nrow = 5, ncol = 4, byrow = TRUE,
             dimnames = list(paste("Row", 1:5),
                             paste("Col", 1:4)))
print(m1)

# 3x3 matrix filled by column
m2 <- matrix(1:9, nrow = 3, ncol = 3, byrow = FALSE,
             dimnames = list(c("R1", "R2", "R3"),
                             c("C1", "C2", "C3")))
print(m2)

# 2x2 matrix filled by column
m3 <- matrix(1:4, nrow = 2, ncol = 2,
             dimnames = list(c("a", "b"), c("x", "y")))
print(m3)
