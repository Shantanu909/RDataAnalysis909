# Function to print the total of the first n even numbers
print_total_of_evens <- function(n) {
  total <- 0
  count <- 0
  num <- 0
  
  while (count < n) {
    if (num %% 2 == 0) {
      total <- total + num
      count <- count + 1
    }
    num <- num + 1
  }
  
  print(total)
}

# Function to print the Fibonacci series up to the nth term
print_fibonacci_series <- function(n) {
  a <- 0
  b <- 1
  
  if (n >= 1) {
    print(a)
  }
  
  if (n >= 2) {
    print(b)
  }
  
  for (i in 3:n) {
    c <- a + b
    print(c)
    a <- b
    b <- c
  }
}

# Function to calculate the factorial of a number
calculate_factorial <- function(n) {
  factorial <- 1
  
  for (i in 1:n) {
    factorial <- factorial * i
  }
  
  return(factorial)
}

# Function to check if a number is Armstrong or not
is_armstrong <- function(num) {
  digits <- as.numeric(strsplit(as.character(num), "")[[1]])
  n <- length(digits)
  sum <- 0
  
  for (digit in digits) {
    sum <- sum + digit ^ n
  }
  
  if (sum == num) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

# Function to display the reverse of a number
print_reverse <- function(num) {
  digits <- as.numeric(strsplit(as.character(num), "")[[1]])
  reversed <- rev(digits)
  
  print(paste("Reverse of", num, "is", paste(reversed, collapse = "")))
}

# Function to calculate the sum of digits of a number
calculate_sum_of_digits <- function(num) {
  digits <- as.numeric(strsplit(as.character(num), "")[[1]])
  sum <- 0
  
  for (digit in digits) {
    sum <- sum + digit
  }
  
  return(sum)
}

# Function to print a pattern
print_pattern1 <- function(n) {
  for (i in 1:n) {
    for (j in 1:n) {
      cat(j)
    }
    cat("\n")
  }
}

# Function to print pattern like follow: A AAAA, BBBBB, CCCCC, DDDDD, EEEEE
print_pattern2 <- function(n) {
  for (i in 1:n) {
    letter <- as.character(LETTERS[i])
    for (j in 1:i) {
      cat(letter)
    }
    cat("\n")
  }
}

# Test the function
# Uncomment the function call below to test the function

 #print_total_of_evens(100)
 #print_fibonacci_series(10)
 #print(calculate_factorial(5))
 #print(is_armstrong(153))
 #print_reverse(12345)
 #print(calculate_sum_of_digits(12345))
 #print_pattern1(5)
 #print_pattern2(5)

 