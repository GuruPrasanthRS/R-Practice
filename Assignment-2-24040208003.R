# CONTROL STRUCTURES

# Using ifelse() for Conditional Vectorization
# Replace even numbers with "Even" and odd numbers with "Odd"

numbers <- 1:10
labels <- ifelse(numbers %% 2 == 0, "Even", "Odd")
print(labels)

# While Loop with a Condition
# Calculate factorial using while loop

n <- 5
factorial <- 1
i <- 1
while (i <= n) {
  factorial <- factorial * i
  i <- i + 1
}
print(factorial)

# Nested For Loops
# Print a multiplication table

for (i in 1:3) {
  for (j in 1:3) {
    cat(i, "x", j, "=", i * j, "\n")
  }
}

# Repeat Loop with Multiple Break Conditions
# Guess a random number using repeat loop

target <- sample(1:10, 1)
guess <- -1
repeat {
  guess <- as.integer(readline(prompt = "Guess the number: "))
  if (guess == target) {
    print("Correct!")
    break
  } else if (guess < target) {
    print("Too low!")
  } else {
    print("Too high!")
  }
}

# Loop Control with Next
# Skip vowels in a loop

letters <- letters[1:10]
for (letter in letters) {
  if (letter %in% c("a", "e", "i", "o", "u")) {
    next
  }
  print(letter)
}

# Custom If-Else Logic
# Determine category based on a score

score <- 85
if (score >= 90) {
  print("A grade")
} else if (score >= 75) {
  print("B grade")
} else if (score >= 50) {
  print("C grade")
} else {
  print("Fail")
}

# Matrix Multiplication with %*%
# Multiply a matrix by its transpose

matrix_example <- matrix(1:6, nrow = 2)
result <- matrix_example %*% t(matrix_example)
print(result)

# Using Break and Next Together
# Stop loop early but skip specific values

for (i in 1:10) {
  if (i == 7) break
  if (i %% 2 == 0) next
  print(i)
}

# Working with Data Frames
# Filter rows of a data frame

df <- data.frame(Name = c("Alice", "Bob", "Charlie"),
                 Age = c(25, 30, 35))
filtered_df <- df[df$Age > 25, ]
print(filtered_df)

--------------------------------------------------------------------------------
  
# FUNCTIONS
  
# Inbuilt Functions

# Generate a sequence of numbers with a specific length
  
sequence <- seq(1, 100, length.out = 10)
print(sequence)

# Calculate median of a vector

median_value <- median(c(10, 15, 20, 25, 30))
print(median_value)

# Find the product of numbers from 1 to 5

product_result <- prod(1:5)
print(product_result)

--------------------------------------------------------------------------------
  
# User-Defined Functions

# Function with Conditional Logic
  
check_even_odd <- function(num) {
  if (num %% 2 == 0) {
    print("Even")
  } else {
    print("Odd")
  }
}
check_even_odd(7)
check_even_odd(10)

# Function with Default Arguments

area_rectangle <- function(length = 5, width = 3) {
  return(length * width)
}
print(area_rectangle())
print(area_rectangle(10, 4))

# Lazy Evaluation

lazy_example <- function(a, b) {
  print(a^2)
  print(a + b)
}
lazy_example(3) # `b` is not used, so no error occurs.

--------------------------------------------------------------------------------------

# String Operations

# Valid String Construction
  
str1 <- "He said, 'R is amazing!'"
str2 <- 'She replied, "Yes, indeed!"'
print(str1)
print(str2)

# Combining Strings

str_a <- "Good"
str_b <- "Morning"
combined1 <- paste(str_a, str_b)
combined2 <- paste(str_a, str_b, sep = "-")
print(combined1)
print(combined2)

# String Formatting and Manipulation

formatted_num <- format(1234.5678, nsmall = 2, scientific = TRUE)
print(formatted_num)

uppercase <- toupper("hello")
lowercase <- tolower("WORLD")
print(uppercase)
print(lowercase)

# Extracting and Counting Characters

str <- "Programming in R"
substring_part <- substring(str, 1, 11)
char_count <- nchar(str)
print(substring_part)
print(char_count)

--------------------------------------------------------------------------------

# Functions with Multiple Returns

stats <- function(numbers) {
  mean_val <- mean(numbers)
  sum_val <- sum(numbers)
  return(list(mean = mean_val, sum = sum_val))
}
result <- stats(c(10, 20, 30))
print(result$mean)
print(result$sum)

# Recursive Functions

factorial <- function(n) {
  if (n == 0) return(1)
  return(n * factorial(n - 1))
}
print(factorial(5))

# Nested Functions

compound_interest <- function(principal, rate, time) {
  interest <- function(p, r, t) {
    return(p * (1 + r / 100)^t)
  }
  return(interest(principal, rate, time))
}
print(compound_interest(1000, 5, 2))

# Error Handling in Functions

safe_divide <- function(a, b) {
  if (b == 0) {
    return("Division by zero is not allowed!")
  }
  return(a / b)
}
print(safe_divide(10, 0))
print(safe_divide(10, 2))

# Anonymous Functions

squared <- lapply(1:5, function(x) x^2)
print(squared)

--------------------------------------------------------------------------------

# Advanced String Manipulation

# Replace a substring
  
str <- "Learning R programming"
modified_str <- sub("R", "Data Science", str)
print(modified_str)

# Split a string

split_str <- strsplit("apple,banana,cherry", split = ",")
print(split_str)
