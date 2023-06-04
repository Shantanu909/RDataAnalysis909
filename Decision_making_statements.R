# Question 1: Interchange or swap the values of two variables
x <- 10
y <- 20

temp <- x
x <- y
y <- temp

print(x)  # Expected output: 20
print(y)  # Expected output: 10


# Question 2: Convert a character from lower case to upper case
lower_case <- readline("Enter a character in lower case: ")
upper_case <- toupper(lower_case)
print(upper_case)


# Question 3: Check if a character is a vowel or consonant
char <- readline("Enter a character: ")

if (char %in% c("a", "e", "i", "o", "u")) {
  print("Vowel")
} else {
  print("Consonant")
}


# Question 4: Calculate percentage and print result based on conditions
subject_marks <- readline("Enter marks of 5 subjects (comma-separated): ")
marks <- as.numeric(strsplit(subject_marks, ",")[[1]])
percentage <- sum(marks) / length(marks)

if (percentage >= 70) {
  print("DISTINCTION")
} else if (percentage >= 60 && percentage <= 69) {
  print("FIRST CLASS")
} else if (percentage >= 50 && percentage <= 59) {
  print("SECOND CLASS")
} else if (percentage >= 40 && percentage <= 49) {
  print("PASS CLASS")
} else {
  print("FAIL")
}


# Question 5: Check pass/fail status for subjects
subject_marks <- readline("Enter marks of 5 subjects (comma-separated): ")
marks <- as.numeric(strsplit(subject_marks, ",")[[1]])

pass_count <- sum(marks >= 40)
fail_count <- sum(marks < 40)

if (pass_count == 5) {
  print("PASS")
} else if (fail_count <= 2) {
  print("ATKT")
} else {
  print("FAIL")
}


# Question 6: Calculate area for different shapes using switch-case
shape <- readline("Enter the shape (circle/square/rectangle/triangle): ")

switch(shape,
       "circle"     = {
         radius <- as.numeric(readline("Enter the radius: "))
         area <- pi * radius^2
         print(area)
       },
       "square"     = {
         side <- as.numeric(readline("Enter the side length: "))
         area <- side^2
         print(area)
       },
       "rectangle"  = {
         length <- as.numeric(readline("Enter the length: "))
         width <- as.numeric(readline("Enter the width: "))
         area <- length * width
         print(area)
       },
       "triangle"   = {
         base <- as.numeric(readline("Enter the base length: "))
         height <- as.numeric(readline("Enter the height: "))
         area <- 0.5 * base * height
         print(area)
       },
       print("Invalid shape.")
)


# Question 7: Check if a year is a leap year
year <- as.integer(readline("Enter a year: "))

if (year %% 400 == 0) {
  print("Leap Year")
} else if (year %% 100 == 0) {
  print("Not a Leap Year")
} else if (year %% 4 == 0) {
  print("Leap Year")
} else {
  print("Not a Leap Year")
}


# Question 8: Determine the grade of steel based on conditions
hardness <- as.numeric(readline("Enter the hardness: "))
carbon <- as.numeric(readline("Enter the carbon content: "))
tensile <- as.numeric(readline("Enter the tensile strength: "))

grade <- switch(TRUE,
                hardness > 50 && carbon < 0.7 && tensile > 5500   = "Grade A",
                hardness > 50 && carbon < 0.7                     = "Grade B",
                carbon < 0.7 && tensile > 5500                    = "Grade C",
                hardness > 50 && tensile > 5500                   = "Grade D",
                carbon < 0.7 || hardness > 50 || tensile > 5500   = "Grade E",
                "Grade F"
)

print(grade)

