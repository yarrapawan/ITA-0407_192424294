# Program 4: Create arrays from vectors with dimension names, print specific elements.

values <- 1:24
arr <- array(values, dim = c(2, 3, 4),
             dimnames = list(
               c("Row1", "Row2"),
               c("Col1", "Col2", "Col3"),
               c("Table1", "Table2", "Table3", "Table4")))
print(arr)

# Access specific elements
print(arr[2, 3, 4])
print(arr["Row1", "Col2", "Table3"])
