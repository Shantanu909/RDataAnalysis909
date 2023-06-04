#lists
{
  subject = c("AC","BEE","ICP","IC","FSSI","BES","SPS","PSY")
  exp_SPI = c(8,9,5,7,6,7,3,5)
  
  exp_result = list(subject, exp_SPI)
  print(exp_result)
  
  a= exp_SPI
  a[3]= 4
  exp_SPI[3]= a
}
#lists
{
  vin = c(1,2,3,4,5,6,7)
  vb = c(FALSE,TRUE,TRUE,FALSE,TRUE)
  vchar = c("a","d","e","q")
  vector_list = list(vin,vchar,vb)
  vector_list
  
  #naming lists indexes
  
  book = list(genre = "Action",price = "100$", available = FALSE,ratings = 3.5)
  book$available
  
}



#vectors
{
  paste("declaring a vector")
  a=1:20
  
  b=c(5,8,7,25,12,156)
  
  d= seq(1,50)
  e=seq(1,20,by=4)
  a=1:20
  f= a*2
  g=c(500,200,300,00,800,900)
  h=c(400,50,30)
  
  h+g
  g+h
  class(g)
  typeof(g)
  typeof(g[3])
  
  name =("s,h,a,n")
  name =c("s","h","a","n")
  name1 = c("t","a","n","u")
  name[-1]
  name[6]
  name[-2:-4]
  name[-4:-1]
  name[-3:-1]
  name[c(1,4)]
  name[c(1,3,5)]
}
#Dataframe
{
  A= mtcars
  A
}
#Matrices
{
  amatrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)
  
  amatrix
}
#Factor
{
  data <- c("North","West","East")
  print(data)
  print(is.factor(data))
  
  factor_data <- factor(data)
  
  print(factor_data)
  print(is.factor(factor_data))
}

