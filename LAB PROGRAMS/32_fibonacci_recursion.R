# Program 32: Fibonacci Series using Recursion in R

# Define recursive function
fibonacci <- function(n) {
  if (n == 0) {
    return(0)
  } else if (n == 1) {
    return(1)
  } else {
    return(fibonacci(n - 1) + fibonacci(n - 2))
  }
}

# Number of terms
n <- 10

# Display Fibonacci Series
cat("Fibonacci Series using Recursion:\n")
for (i in 0:(n - 1)) {
  cat(fibonacci(i), " ")
}
cat("\n")
