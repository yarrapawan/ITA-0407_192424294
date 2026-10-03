# Program 6: Create an R list containing vectors, matrices, and functions; display contents.

my_vector <- c(1, 2, 3)
my_matrix <- matrix(1:6, nrow = 2, ncol = 3)
square <- function(x) {
  x^2
}

my_list <- list(Vector = my_vector, Matrix = my_matrix,
                Function = square)
print(my_list)
