# Program 5: Create and manipulate factor variables (e.g., women's dataset heights, random LETTERS sample).

# Factor from women dataset heights
height_level <- ifelse(women$height < 62, "Short",
                ifelse(women$height < 68, "Medium", "Tall"))
height_factor <- factor(height_level,
                        levels = c("Short", "Medium", "Tall"))
print(height_factor)
print(as.integer(height_factor))
print(levels(height_factor))
print(table(height_factor))

# Factor from random sample of LETTERS
set.seed(123)
letters_sample <- sample(LETTERS[1:5], 20, replace = TRUE)
letter_factor <- factor(letters_sample)
print(letter_factor)
print(levels(letter_factor))
print(table(letter_factor))
