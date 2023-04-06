"{
var = readline("enter: ")
var = as.integer(var)
i=0
for(i in 1:var)
{
  if(var%%i==0){
    print(i)
  }

}

}
"

{
  var = readline("enter: ")
  var = as.integer(var)
  i=0
  for(i in 1:var)
  {
    if(var%%i==0){
      print(paste0(i,"X"))
    }
    
  }
  

}

{
  var = readline("enter: ")
  var = as.integer(var)
  i=0
  lista=c()
  for(i in 1:var)
  {
    if(var%%i==0){
lista=append(lista,i)
      }
    }
    
  }
  
  
{
var = readline("enter: ")
var = as.integer(var)

fact =1
for(i in 1:var)
{
  fact = fact*i
}
print(fact)
}

}
