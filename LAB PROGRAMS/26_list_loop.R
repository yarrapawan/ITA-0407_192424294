# Program 26: Looping Over Non-Vector Sets (Lists)

my_list <- list(a = 10, b = 20, c = 30)
for (item in my_list) {
  print(item)
}

names_list <- names(my_list)
for (name in names_list) {
  cat(name, "=", my_list[[name]], "\n")
}
