## Part 1: Debugging

my_num <- 6
initials <- "?. ?."

my_vector <- c(my_num, initials)

# run ? to get more info
vector_sum <- sum(my_vector)

# Describe why this doesn't work: 
# sum only take numbers, cannot sum strings

install.packages("stringr")

my_line <- "Hey, hey, this is the library"

print(str_length(my_line))

# Describe why this doesn't work: 
# did not call the libarian function

said_the_famous <- paste(my_line, " - ", initial)

# Describe why this doesn't work: 
# spelling errors should be "initials"


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
typeof(c(1, 'hi'))

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function (v1, v2) {
  return (paste ("The difference in lengths is", abs(length(v1) - length(v2))))
}

# Pass two vectors of different length to your `CompareLength` function
v1 <- c(1:100)
v2 <- 'hello'
CompareLength(v1, v2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(f_vector, s_vector) {
  length1 <- length(f_vector)
  length2 <- length(s_vector)
  if (length1 > length2) {
    return (paste("Your first vector is longer by", length1 - length2, "elements"))
  } else {
    return (paste("Your second vector is longer by", length2 - length1, "elements"))
  }
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(v1, v2)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(v1, v2, v3) {
  return (c(v1, v2, v3))
}

# Send 3 vectors to your function to test it.
v3 <- 'good'
CombineVectors(v1, v2, v3)
# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(courses) {
  return(gsub("[A-Z]","", courses))
}
