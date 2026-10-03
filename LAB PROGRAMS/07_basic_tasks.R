# Program 7: Write R programs for basic tasks: Factors of a number, generate a vector of 10 random integers between -50 and 50, print numbers 1-100 with FizzBuzz logic.

# Factors of a number
num <- 12
factors <- c()
for (i in 1:num) {
  if (num %% i == 0) {
    factors <- c(factors, i)
  }
}
print("Factors of the number:")
print(factors)

# 10 random integers between -50 and 50
set.seed(123)
print("10 random integers:")
print(sample(-50:50, 10, replace = TRUE))

# FizzBuzz
for (i in 1:100) {
  if (i %% 15 == 0) print("FizzBuzz")
  else if (i %% 3 == 0) print("Fizz")
  else if (i %% 5 == 0) print("Buzz")
  else print(i)
}
