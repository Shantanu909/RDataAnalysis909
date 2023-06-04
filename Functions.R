# Function to calculate the sum of two numbers
sum <- function(a, b) {
  return(a + b)
}

# Function to calculate the average of an array
avg <- function(arr) {
  n <- length(arr)
  sum <- 0
  
  for (i in 1:n) {
    sum <- sum + arr[i]
  }
  
  return(sum / n)
}

# Function to check if a number is even or odd
evenodd <- function(num) {
  if (num %% 2 == 0) {
    return("Even")
  } else {
    return("Odd")
  }
}

# Function to calculate the factorial of a number
fact <- function(num) {
  factorial <- 1
  
  for (i in 1:num) {
    factorial <- factorial * i
  }
  
  return(factorial)
}

# Function to check if a number is prime
prime <- function(num) {
  is_prime <- TRUE
  
  if (num <= 1) {
    is_prime <- FALSE
  } else {
    for (i in 2:(num/2)) {
      if (num %% i == 0) {
        is_prime <- FALSE
        break
      }
    }
  }
  
  if (is_prime) {
    print(paste(num, "is prime."))
  } else {
    print(paste(num, "is not prime."))
  }
}

# Function to calculate the power of a number
power <- function(base, expon) {
  result <- 1
  
  for (i in 1:expon) {
    result <- result * base
  }
  
  print(paste(base, "^", expon, "is", result))
}

# Function to calculate simple interest
calculate_interest <- function(principal, rate, time) {
  interest <- (principal * rate * time) / 100
  return(interest)
}

# Function to calculate the square of a number
calculate_square <- function(num) {
  return(num * num)
}

# Function to calculate the power of a number using recursion
calculate_power <- function(base, expon) {
  if (expon == 0) {
    return(1)
  } else {
    return(base * calculate_power(base, expon - 1))
  }
}

# Function to calculate the absolute value of a number
calculate_absolute <- function(num) {
  if (num < 0) {
    return(-num)
  } else {
    return(num)
  }
}

# Function to count the number of digits in a user-entered number
count_digits <- function(num) {
  count <- 0
  
  while (num != 0) {
    num <- num %/% 10
    count <- count + 1
  }
  
  return(count)
}

# Function to print prime numbers between a given range
print_primes <- function(start, end) {
  for (num in start:end) {
    is_prime <- TRUE
    
    if (num <= 1) {
      is_prime <- FALSE
    } else {
      for (i in 2:(num/2)) {
        if (num %% i == 0) {
          is_prime <- FALSE
          break
        }
      }
    }
    
    if (is_prime) {
      print(num)
    }
  }
}

# Function to create a calculator
calculator <- function() {
  num1 <- as.integer(readline("Enter the first number: "))
  num2 <- as.integer(readline("Enter the second number: "))
  
  operation <- readline("Enter the operation (+, -, *, /): ")
  
  if (operation == "+") {
    print(num1 + num2)
  } else if (operation == "-") {
    print(num1 - num2)
  } else if (operation == "*") {
    print(num1 * num2)
  } else if (operation == "/") {
    print(num1 / num2)
  } else {
    print("Invalid operation!")
  }
}

# Test the functions
# Uncomment the function calls below to test each function

 print(sum(5, 3))
 print(avg(c(1, 2, 3, 4, 5)))
 print(evenodd(7))
 print(fact(5))
 prime(13)
 power(2, 3)
 print(calculate_interest(1000, 5, 2))
 print(calculate_square(5))
 print(calculate_power(2, 4))
 print(calculate_absolute(-10))
 print(count_digits(12345))
 print_primes(1, 20)
 calculator()
