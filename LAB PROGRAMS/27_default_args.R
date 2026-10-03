# Program 27: Functions with Default Argument Values

add_numbers <- function(a, b = 10) {
  result <- a + b
  return(result)
}

print(add_numbers(5))
print(add_numbers(5, 20))
