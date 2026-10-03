exam_data <- data.frame(
  name = c("Anu", "Bala", "Charan", "Divya", "Esha"),
  score = c(85, 62, 90, 75, 88),
  attempts = c(1, 3, 2, 2, 1),
  qualify = c("yes", "no", "yes", "no", "yes"),
  stringsAsFactors = FALSE
)
print(exam_data)

print(exam_data[, c("name", "score")])
print(exam_data[1:3, ])

new_row <- data.frame(name = "Farhan", score = 70,
                      attempts = 3, qualify = "no")
exam_data <- rbind(exam_data, new_row)

exam_data$grade <- c("A", "C", "A+", "B", "A", "B")

exam_data <- exam_data[order(-exam_data$score), ]

write.csv(exam_data, "exam_data.csv", row.names = FALSE)
print(exam_data)
