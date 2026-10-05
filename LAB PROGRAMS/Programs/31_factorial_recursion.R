# Program 31: Recursion in R - Factorial Program

factorial_fun <- function(n) {
  if (n == 1) {
    return(1)
  } else {
    return(n * factorial_fun(n - 1))
  }
}

print(factorial_fun(5))
