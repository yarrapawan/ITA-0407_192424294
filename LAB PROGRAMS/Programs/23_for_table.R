# Program 23: For Loop - Printing Multiplication Table

num <- 5
for (i in 1:10) {
  result <- num * i
  cat(num, "*", i, "=", result, "\n")
}

total <- 0
for (i in 1:10) {
  total <- total + i
}
print(total)
