v1=c(1,2,3,4,5)
v2=c(5,4,3,2,1)
v3=c(0,4,3,1)








##line graph
plot(v1,type="o")



##scaTterplot
plot(v1)


##multiline
plot(v1,type="o",col="red")
lines(v2,type="o",col="blue")
(v3,col="black")







##Q,MAKRS IN 1ST SEM VS PREDICTED MARKS IN 22ND SEM. MAKE A COMPARATIVE GRPAH


marks = c(90,90,90,90,90)
pred_marks = c(90,92,95,91,90)

plot(marks, type="o",col ="red",xlab ="Subjects",ylab = "Marks",main="Comparitive analysis")
lines(pred_marks, type="o", col ="green")


##pie chart

party_money=c(100,70,90,200,150)
total = sum(party_money)
print(total)
each =c("")
)
contributions(a)
{
   f = (party_money/total)*100
  
   each = c(round(f,2))
}
each = as.character(each)
print(each)
friends=c("John","Maurice","Stephanie","Bruce","William")
friends_con = paste(friends,each)
colour =c("red","green","blue","yellow","black")
pie(party_money,labels = friends_con,col=colour,angle = 76,col.main = "red", density = 83)


##histogram

age=c(25,34,26,32,27,18,26,32,12,62,31,91,62,60,30,20)
hist(age,main = "Age survey",col.main="blue", xlab = "Red", ylab = "No.of participants")



##hw
a = mtcars
mp = a$mpg

hist(mp,main = "environmental analysis",col.main="blue", xlab = "mpg", ylab = "No.of cars")

hp = a$hp
barplot(hp,mp,main = "Engine efficiency",col.main="green", xlab = "mpg", ylab = "H.P.")


ge = a$gear
plot(ge,hp,main = "Gear to H.P. Ratio",col.main="green", xlab = "No.of gears", ylab = "H.P.")

qs = a$qsec
plot(qs,mp,main = "Performance vs efficiency",col.main="green", xlab = "qsec",ylab="mpg")

dr = a$drat
barplot(dr,mp,main = "Towing capapcity vs Mileage",col.main="green", xlab = "drat",ylab="mpg",horiz=T)

