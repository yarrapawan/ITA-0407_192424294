# Program 28: Return Values and Explicit return()

square_number <- function(x) {
  x * x
}

cube_number <- function(x) {
  return(x * x * x)
}

print(square_number(4))
print(cube_number(3))
