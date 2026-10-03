# Program 29: Returning Complex Objects from Functions

calculate_stats <- function(x) {
  result <- list(
    sum = sum(x),
    mean = mean(x),
    max = max(x),
    min = min(x)
  )
  return(result)
}

data <- c(10, 20, 30, 40)
stats <- calculate_stats(data)
print(stats)
