# R Assignment-3
# Name    - Guru Prasanth R S
# Regd no - 24040208003

-----------------------------------------------------------------------------------
# R Charts and Graphs

# Pie Chart
slices <- c(10, 20, 30, 40, 50)
labels <- c("A", "B", "C", "D", "E")
pie(slices, labels = labels, main = "Pie Chart Example", col = rainbow(length(slices)))

# Another Pie Chart with percentages
pct <- round(slices / sum(slices) * 100)
labels_pct <- paste(labels, pct, "%")
pie(slices, labels = labels_pct, main = "Pie Chart with Percentages", col = heat.colors(length(slices)))

# Bar Chart
values <- c(5, 7, 9, 12, 15)
names <- c("Red", "Blue", "Green", "Yellow", "Purple")
barplot(values, names.arg = names, col = c("red", "blue", "green", "yellow", "purple"), main = "Bar Chart Example", xlab = "Colors", ylab = "Values")

# Grouped Bar Chart
group_values <- matrix(c(5, 7, 9, 12, 6, 8, 10, 14), nrow = 2)
barplot(group_values, beside = TRUE, col = c("red", "blue"), legend = c("Group 1", "Group 2"), main = "Grouped Bar Chart Example")

# Boxplot
set.seed(123)
data <- rnorm(100)
boxplot(data, main = "Boxplot Example", xlab = "Data", ylab = "Values", col = "lightblue", notch = TRUE)

# Boxplot Comparing Two Data Sets
data1 <- rnorm(100, mean = 3)
data2 <- rnorm(100, mean = 7)
boxplot(data1, data2, names = c("Set 1", "Set 2"), main = "Comparison Boxplot", col = c("cyan", "magenta"))

# Histogram
hist(data, main = "Histogram Example", xlab = "Values", col = "pink", border = "black", breaks = 10)

# Another Histogram with Density Curve
hist(data, probability = TRUE, main = "Histogram with Density Curve", col = "lightgray", border = "black", breaks = 10)
lines(density(data), col = "blue", lwd = 2)

# Line Chart
x <- 1:10
y <- x^2
plot(x, y, type = "o", col = "blue", main = "Line Chart Example", xlab = "X-Axis", ylab = "Y-Axis")

# Another Line Chart with multiple lines
y2 <- x^1.5
lines(x, y2, type = "o", col = "red")
legend("topleft", legend = c("y = x^2", "y = x^1.5"), col = c("blue", "red"), lty = 1)

# Scatterplot
x <- rnorm(50)
y <- rnorm(50)
plot(x, y, main = "Scatterplot Example", xlab = "X-Values", ylab = "Y-Values", col = "darkgreen", pch = 19)

# Scatterplot with Regression Line
fit <- lm(y ~ x)
abline(fit, col = "red", lwd = 2)

# Additional Chart Examples

# Stacked Bar Chart
values_matrix <- matrix(c(3, 5, 2, 8, 4, 7), nrow = 2)
barplot(values_matrix, beside = FALSE, col = c("red", "blue"), legend = c("Group 1", "Group 2"), main = "Stacked Bar Chart Example")

# Multiple Boxplots
set.seed(456)
data1 <- rnorm(100, mean = 5)
data2 <- rnorm(100, mean = 10)
boxplot(data1, data2, names = c("Dataset 1", "Dataset 2"), main = "Multiple Boxplots Example", col = c("purple", "orange"))

# Density Plot
density_data <- density(data)
plot(density_data, main = "Density Plot Example", col = "red", lwd = 2)

# Step Chart
x_steps <- c(1, 2, 3, 4, 5)
y_steps <- c(10, 15, 13, 20, 18)
plot(x_steps, y_steps, type = "s", col = "blue", main = "Step Chart Example", xlab = "X-Values", ylab = "Y-Values")

# Dot Chart
groups <- c("A", "B", "C", "D")
values_dot <- c(7, 12, 9, 14)
dotchart(values_dot, labels = groups, main = "Dot Chart Example", col = "darkred")

# Heatmap (using base R)
data_matrix <- matrix(rnorm(100), nrow = 10)
heatmap(data_matrix, main = "Heatmap Example", col = heat.colors(10))
