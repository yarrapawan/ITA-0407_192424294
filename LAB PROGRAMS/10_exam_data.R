# Program 10: Create and explore a data frame exam_data with name, score, attempts, and qualifying fields. Perform extract, add row/column, sort, save to file.

exam_data <- data.frame(
  name = c("Anu", "Bala", "Charan", "Divya", "Esha"),
  score = c(85, 62, 90, 75, 88),
  attempts = c(1, 3, 2, 2, 1),
  qualify = c("yes", "no", "yes", "no", "yes"),
  stringsAsFactors = FALSE
)
print(exam_data)

# Extract columns and rows
print(exam_data[, c("name", "score")])
print(exam_data[1:3, ])

# Add a new row
new_row <- data.frame(name = "Farhan", score = 70,
                      attempts = 3, qualify = "no")
exam_data <- rbind(exam_data, new_row)

# Add a new column
exam_data$grade <- c("A", "C", "A+", "B", "A", "B")

# Sort by score in descending order
exam_data <- exam_data[order(-exam_data$score), ]

# Save to file
write.csv(exam_data, "exam_data.csv", row.names = FALSE)
print(exam_data)
