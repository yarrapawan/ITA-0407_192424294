# Program 30: Functions are Objects in R

my_function <- function(x) {
  x + 1
}

print(class(my_function))
print(my_function(10))

another_function <- my_function
print(another_function(20))
