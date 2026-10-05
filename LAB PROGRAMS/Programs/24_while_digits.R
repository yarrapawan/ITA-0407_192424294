# Program 24: While Loop - Sum of Digits

num <- 1234
total <- 0
while (num > 0) {
  digit <- num %% 10
  total <- total + digit
  num <- num %/% 10
}
print(total)
