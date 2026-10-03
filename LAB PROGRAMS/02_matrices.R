m1 <- matrix(1:20, nrow = 5, ncol = 4, byrow = TRUE,
             dimnames = list(paste("Row", 1:5),
                             paste("Col", 1:4)))
print(m1)

m2 <- matrix(1:9, nrow = 3, ncol = 3, byrow = FALSE,
             dimnames = list(c("R1", "R2", "R3"),
                             c("C1", "C2", "C3")))
print(m2)

m3 <- matrix(1:4, nrow = 2, ncol = 2,
             dimnames = list(c("a", "b"), c("x", "y")))
print(m3)
