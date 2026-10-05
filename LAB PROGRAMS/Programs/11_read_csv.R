# Program 11: Write an R program to read a .csv file and display contents.

# Create a sample CSV file (skip if you already have one)
students <- data.frame(
  id = 1:5,
  name = c("Anu", "Bala", "Charan", "Divya", "Esha"),
  marks = c(85, 62, 90, 75, 88)
)
write.csv(students, "students.csv", row.names = FALSE)

# Read and display the CSV file
data <- read.csv("students.csv")
print("Contents of the CSV file:")
print(data)
