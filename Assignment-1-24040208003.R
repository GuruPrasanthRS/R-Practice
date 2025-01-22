# R Assignment-1
# Name    - Guru Prasanth R S
# Regd no - 24040208003

-----------------------------------------------------------------------------------
# VECTORS

# vector with numerical values
numbers <- c(10, 20, 30, 40, 50)
# print the numerical values of the vector numbers
print(numbers)

# Vector with numerical values in a sequence
num <- 1:10
print(num)

# Vector of strings
a <- c("hello","welcome","thanks")
# Print the vector a
print(a)

# print the class of the vector num , numbers and a
print(class(num))
print(class(numbers))
print(class(a))

# to print the ascii value of the string Guru
v <- charToRaw("GURU") 
print(class(v))

# combine the two vectors numbers and a
combined_vectors <- c(numbers, a) 
print(combined_vectors)

# printing the length of the vector numbers , a , and combined_vectors
length(numbers)
length(a)
length(combined_vectors)

# access the 1 element in the vector a
a[1]

# access the first 4 elements in the vector numbers
first_four <- numbers[1:4] 
print(first_four)

# sort of the vector
sort(a)       #vector a
sort(numbers) #vector numbers
sort(combined_vectors) #vector combined_vector

------------------------------------------------------------------------------------

# LISTS
  
# Create a list. 
list_1 <- list(
  name = 'Guru',
  age = 21,
  course = 'MSC DS',
  place = 'TN'
)

# Print the list.
print(list_1)

# access the list1

list_1["name"] #it will print the name in the list
list_1["age"] #it will print the age in the list
list_1[1:3] #print the first 3 in the list

# updating the value of age in the list

list_1["age"] <- 22
print(list_1) #print the updated list1

# joining two list

list1 <- list("x", "y", "z")
list2 <- list(1,2,3)
list3 <- c(list1,list2)
print(list3)

----------------------------------------------------------------------------------

# MATRICES

# Create a matrix 2x3. 
Matrix = matrix( c('a','b','c','d','e','f'), nrow=2,ncol=3,byrow = TRUE) 
print(Matrix)

# rows of matrix
nrow(Matrix) 

#Number of Rows and Columns
dim(Matrix)

#Matrix Length
length(Matrix)

#access the matrix
print(Matrix[1, 2])

#multiply the matrix with its transpose
M = matrix( c(1,1,0,0), nrow=2,ncol=2,byrow = TRUE) 
t = M %*% t(M) #multiply is done by %*%
print(t)

---------------------------------------------------------------------------------

# ARRAYS

# Create an array. 
Array <- array(c('apple','banana'),dim=c(3,3,2))  # dim=c(3,3,2) row=3 col=3 numberoftimes=2

#print the array
print(Array)

#Access Array Items
Array[2, 3, 2] #means row=2 col=3 and from the 2nd print

#Amount of Rows and Columns
dim(Array)

#Array Length
length(Array)

---------------------------------------------------------------------------------

# FACTOR
  
# Create a vector of colors
colors <- c("red", "blue", "green", "red", "blue", "green")

# Convert the vector to a factor
color_factor <- factor(colors)

# Print the factor
print(color_factor) 

# View the levels of the factor
levels(color_factor)

-----------------------------------------------------------------------------------

# DATAFRAMES
  
# creating the data frames
df <- data.frame(
    ID = c(201, 202, 203),
    Name = c("MVSA", "ML", "BDA"),
    Score = c(95, 89, 36),
    Passed = c(TRUE, TRUE, FALSE)
  )
print(df)

#Summarize the Data
summary(df)

#Add Rows
new_row <- rbind(df,c(204,"RPROG",88,TRUE))
print(new_row)

#Add Columns
new_col <- cbind(df, Year = c('1 year','2 year','3 year'))
print(new_col)


#Amount of Rows and Columns
dim(df)

#Data Frame Length
length(df)

#Combining Data Frames
df1 <- data.frame(
  ID = c(1, 2, 3),
  Name = c("Sai", "ram", "rama"),
  Score = c(95, 89, 36),
  Passed = c(TRUE, TRUE, FALSE)
)

df2 <- data.frame(
  ID = c(4, 5, 6),
  Name = c("raju", "nandu", "raj"),
  Score = c(95, 89, 76),
  Passed = c(TRUE, TRUE, TRUE)
)

New_df <- rbind(df1, df2)
print(New_df)

----------------------------------------------------------------------------------

#to identify if an element belongs to a vector

a <- 8 
b <- 12 
c <- 1:10 
print(a %in% c) #done using %in%
print(b %in% c) #done using %in%

# program to add , sub , multiply and divide two vectors

x <- c( 2,5.5,6) 
y <- c(8, 3, 4)
print(x+y) #add
print(x-y) #sub
print(x*y) #mul
print(x/y) #divide
print(x%%y) #gives the remainder
print(x%/%y) #gives the quotient
