#Q1. Import dataset
#imported using import function in File tab
A = dataset_201
#Q2. Aggregate and determien total amrks for each compoenent
row = nrow(A)
ESE=c()
CSE=c()
TW=c()
IA=c()
Viva=c()
for(i in 1:row)
{
  temp_ese = A$ESE1[i]
  ESE[i]={temp_ese}
  temp_cse = A$`Quiz 1`[i]+A$Assignment1[i]+A$Assignment2[i]+A$`Coding Exercise 1`[i]+A$`Coding
  Exercise 2`[i]+A$`Assignment 3`[i]+A$Assignment4[i]+A$Assignment5[i]
  CSE[i]={temp_cse}
  temp_tw = A$Mooc1[i]+A$`TW Test1`[i]+A$`TW Test 2`[i]
  TW[i]= {temp_tw}
  temp_ia = A$IITB[i]+A$Debug1[i]+A$Debug2[i]+A$Debug3[i]+A$Debug4[i]
  IA[i]={temp_ia}
  temp_viva = A$`Long Hour`[i]+A$`Oral VIVA`[i]
  Viva[i]={temp_viva}
}
#Q3, Map each of the components into 50,20,30,25 and 25 marks, respectively
#i.e., ESE, CSE, IA, TW, and Viva.
for(i in 1:row)
{
  CSE[i]= CSE[i]*20/31
}
#Q4 Draw the scatterplot of each component individually
# not worked as too many names in students plot(A$Student,ESE)
#ESE
Students = A$S.No
plot(x= Students,y=ESE,xlabel="Student number", ylabel="ESE marks",main="Grading",col="red")
#CSE
plot(x= Students,y=CSE,xlabel="Student number", ylabel="CSE marks",main="Grading",col="red")
#IA
plot(x= Students,y=IA,xlabel="Student number", ylabel="CSE marks",main="Grading",col="blue")
#Viva
plot(x= Students,y=Viva,xlabel="Student number", ylabel="CSE marks",main="Grading",col="green")
#TW
plot(x= Students,y=TW,xlabel="Student number", ylabel="CSE marks",main="Grading",col="black")
#Q4.Draw the box plot for each component individually
#ESE
boxplot(x= Students,y=ESE,xlabel="Student number", ylabel="ESE marks",main="Grading",col="red")
#CSE
boxplot(x= Students,y=CSE,xlabel="Student number", ylabel="CSE marks",main="Grading",col="red")
#IA
boxplot(x= Students,y=IA,xlabel="Student number", ylabel="CSE marks",main="Grading",col="blue")
#Viva
boxplot(x= Students,y=Viva,xlabel="Student number", ylabel="CSE marks",main="Grading",col="green")
#TW
boxplot(x= Students,y=TW,xlabel="Student number", ylabel="CSE marks",main="Grading",col="gray")
#Q.6. Find the statistics of each component
ESE_median = median(ESE)
CSE_median = median(CSE)
TW_median = median(TW)
Viva_median = median(Viva)
IA_median = median(IA)
ESE_mean = mean(ESE)
CSE_mean = mean(CSE)
TW_mean = mean(TW)
Viva_mean = mean(Viva)
IA_mean = mean(IA)
ESE_modetype = mode(ESE)
CSE_modetype = mode(CSE)
TW_modetype = mode(TW)
Viva_modetype = mode(Viva)
IA_modetype = mode(IA)
#Insipred by a code on stackoverflow, not entirely mine
Mode <- function(x) {
  uniq <- unique(x)
  boxform <- tabulate(match(x, uniq))
  uniq[tab == max(boxform)]
}
ESE_mode = Mode(ESE)
CSE_mode = Mode(CSE)
TW_mode = Mode(TW)
Viva_mode = Mode(Viva)
IA_mode = Mode(IA)
#Q7. Find out the student getting highest marks in each component individually
#ESE BEST STUDENT
ese_Stud= max(ESE)
ese_Win = c()
for(i in 1:row)
{
  if(ese_Stud==ESE[i])
  {
    ese_win= i ;
    print("HIghest marks are scored by roll number:")
    print(ese_win)
  }
}
#CSE BEST STUDENT
cse_Stud= max(CSE)
cse_Win = c()
for(i in 1:row)
{
  if(cse_Stud==CSE[i])
  {
    cse_win= i ;
    print("HIghest marks are scored by roll number:")
    print(cse_win)
  }
}
#IA BEST STUDENT
IA_Stud= max(IA)
IA_Win = c()
for(i in 1:row)
{
  if(IA_Stud==IA[i])
  {
    IA_win= i ;
    print("HIghest marks are scored by roll number:")
    print(IA_win)
  }
}
#Viva BEST STUDENT
Viva_Stud= max(Viva)
Viva_Win = c()
for(i in 1:row)
{
  if(Viva_Stud==Viva[i])
  {
    Viva_win= i ;
    print("HIghest marks are scored by roll number:")
    print(Viva_win)
  }
}
#TW BEST STUDENT
TW_Stud= max(TW)
TW_Win = c()
for(i in 1:row)
{
  if(TW_Stud==TW[i])
  {
    TW_win= i ;
    print("HIghest marks are scored by roll number:")
    print(TW_win)
  }
}
#Q8 Find out the total marks (out of 150)
Total_marks=c()
for(i in 1:row)
{
  Total_marks[i]=CSE[i]+ESE[i]+TW[i]+IA[i]+Viva[i]
}
#Q9.Draw the scatterplot of total marks
Enrollment=A$Enrollment
plot(x=Enrollment,y=Total_marks,col="black",main="Total Marks distruibution")
#Q10. Draw the boxplot of total marks
boxplot(x=Enrollment,y=Total_marks,col="grey",main="Total Marks distruibution")
#Q11. Find out the total percentage obtained by the student
percentage = c()
for(i in 1:row)
{
  percentage[i]= Total_marks[i]*2/3
}
#Q12 Find out the total number of students with marks
#(i) less than 30 (ii) 30-50 (iii) 50-70 (iv) 70-85 and (v) greater than 85 and represent them in a graph
count1 = 0
count2 = 0
count3 = 0
count4 = 0
count5 =0
for(i in 1:row)
{
  if(percentage[i]>85)
  {count5 = count5+1}
  else if(percentage[i]>69)
  {count4 = count4+1}
  else if(percentage[i]>49)
  {count3 = count3+1}
  else if(percentage[i]>29)
  {count2 = count2+1}
  else if(percentage[i]<30)
  {count1 = count1+1}
}
#Q13. Absolute Grading to be given to each student, as 90%+-->"O" Grade, 80%-90%--> "A+" Grade,
#70%-80%--> "A" grade, etc.
grade =c()
for(i in 1:row)
{ print("Roll number ")
  print(i)
  print("Has grade")
  if(percentage[i]>90)
  {
    grade[i] = "O"
  }
  else if(percentage[i]>79)
  {
    grade[i] = "A+"
  }
  else if(percentage[i]>69)
  {grade[i] = "A"}
  else if(percentage[i]>59)
  {grade[i] = "B+"}
  else if(percentage[i]>49)
  {grade[i] = "B"}
  else if(percentage[i]>39)
  {grade[i] = "C+"}
  else{
    grade[i] ="F"
  }
  print(grade[i])
}
#Q14.Plot the bar chart showing the number of students for each grade obtained in Q.13
O_grad=0
Ap_grad=0
A_grad=0
Bp_grad=0
B_grad=0
Cp_grad=0
F_grad=0
for(i in 1:row)
{
  if(grade[i]=="O")
  {
    O_grad = O_grad+1
  }
  else if(grade[i]=="A+")
  {
    Ap_grad = Ap_grad+1
  }
  else if(grade[i]=="A")
  {
    A_grad = A_grad+1
  }
  else if(grade[i]=="B+")
  {
    Bp_grad = Bp_grad+1
  }
  else if(grade[i]=="B")
  {
    B_grad = B_grad+1
  }
  else if(grade[i]=="C+")
  {
    Cp_grad = Cp_grad+1
  }
  else if(grade[i]=="F")
  {
    F_grad = F_grad+1
  }
}
Grading = c(O_grad,Ap_grad,A_grad,Bp_grad,B_grad,Cp_grad,F_grad)
temp = c( "O A+ A B+ B C+ F")
barplot(Grading,xlab =temp,ylab = "Number of students")
#Q15 Find out the grade obtained by a maximum number of students.
d = which.max(Grading)
if(d==1)
{
  print("Most students have O grade")
}
if(d==2)
{print("Most students have A+ grade")}
if(d==3)
{print("Most students have A grade")}
if(d==4)
{print("Most students have B+ grade")}
if(d==5)
{print("Most students have B grade")}
if(d==6)
{print("Most students have C+ grade")}
if(d==7)
{print("Most students have F grade")}

