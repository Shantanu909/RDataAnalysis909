print("Welcome to the code for checking for leap year")
print("Please enter your year to be checked.")
s = readline()
 x = as.integer(s)
i = 0L
while(i<x+1)
{
   
   if(x==i)
   {
     flag =1
     
     
   }else 
  {
     flag =0
      }
  i=i+4
}
if(flag ==1)
{
  print("A leap year")
}else
{
  print("Not a leap year")
}


i=2024L

while(i>0)
{
  print(i)
  i=i-4
}


