# Program 8: Generate random normal numbers, round them, and display their frequency table as a data frame.

set.seed(123)
x <- rnorm(100)
rounded <- round(x)
freq_table <- table(rounded)
freq_df <- as.data.frame(freq_table)
print(freq_df)
