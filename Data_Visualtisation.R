v1=c(1,2,3,4,5)
v2=c(5,4,3,2,1)
v3=c(0,4,3,1)


##bar graph
barplot(v1,type="o")



##scaTterplot
plot(v1)

##hist

D=mtcars
s=D$mpg
hist(s)


##pie
s=c()
s[1]=D$hp[1]
s[2]=D$hp[2]
s[3]=D$hp[3]
s[4]=D$hp[4]
s[5]=D$hp[5]
s[6]=D$hp[6]
s[7]=D$hp[7]
s[8]=D$hp[8]
s[9]=D$hp[9]
s[10]=D$hp[10]


pie(s/D$hp[1:10])

