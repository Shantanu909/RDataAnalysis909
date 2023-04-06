{print("Please enter m to  n x and y ")
n= readline()
n= as,integer(n)
m= readline()
m= as,integer(m)
x= readline()
x= as,integer(x)
y= readline()
y= as,integer(y)
i=0  
while(i< max(m:n)){
  
    if(i==5){
      i=i+1
      next
    }
  print(i)

    i=i+1
    }





  print("Please eneter your number")
  input = readline()
  input = as.integer(input)
  i = 0L
  count =0
  for(i in 1:input)
  {
  if(input%%i==0)
  {
    count = count+1
  }
  
  }
   if(count>2)
     {
    print("composite")
    
    }else{
    print("Prime")
  }

  
  
  
  print("Enter number of digits in your number")
  num1 = readline()
  num1 = as.integer(num1)
  e = num1-1
  count =0
  for(i in 0:e)
  {
    d = 10^i
    num2 = num1/d
    count = count+num2
    
  }
  print(count)
  