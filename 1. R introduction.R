"HELLO WORLD"
HELLO WORLD
#first R program
2
5 67 7
#only single no at a time

#variable
name1 = "kunal"
name2 = "kiara"
name2

num = "20"

age = 24
age

age = age+5
age

num = num+5

4*8

text = "Great"
paste("Kunal has done",text) #paste acts as input function

paste("My name is", name1)

#assign single value to multiple variables
var1 = var2 = var3 = "orange"
var1
var2
var3


#variable not start with no. and can use only underscore and dot in it
myvar2 = "lion"
myvar2
this.year = 2023
this.year

#keyword cannot be used as the variable 

#Data types in R
#Numeric/float - decimal both +ve and -ve

x = 10.2
class(x)
class(name1)

#Integer - whole +veand -ve L
y = 1000L
class(y)

#Character/string
z = "R is exciting"
class(z)

#Logical /boolean

a = TRUE #TRUE or T / FALSE or F
class(a)

3>5
5>1
5==5  #comparison operator

1 != 5

#Arithmetic operator
m=2
n=3

m+n
m-n
m*n
m/n
m^2
m%%n  #modulus operator gives remainder
m%/%n #floor division

2*pi*6378
pi
2*pi

??constants

LETTERS
letters
pi
month.name
month.abb

#Builtin  Math functions
max(10,50,20,11)
min(10,50,60,20)
sqrt(25)
abs(-5.4) #returns positive integer of -ve awa +ve no.

#Assignment operator
g = 2
h <- 4
h

#DATA STRUCTURES : Vectors, Dataframes
#Homogeneous vectors
##vectors of strings

fruits = c("Banana", "Apple", "Mango", "Peru")
class(fruits)

#vectors of numerical
n1 = c(1,2,3,4,5)
n2 = c(T,F,TRUE,FALSE)
class(n1)
class(n2)

#Heterogenous vectors
mix = c(22,TRUE,"mango",5L,F)
class(mix)

mix = c(22,5L,F)
class(mix)

j = c(2,5,8,4)
k = c(1,9,9,9)

j+k

j*5
(j+k)*1.5

#SEQUENCE
1:10
1:1000

seq(1,50,5) #start value,end value, increment/decrement value
seq(1,20,by=2)
#by keyword used for increment used as exceptional case
seq(10,1,-2)

n1 =1.5:6.5
n1

#Repetition

rep(45,7)
rep("Mango",5)

#Ramdom Sample

sample(1:50,3)

sample(1:10,200) #error occurs

sample(1:10,200,replace = T)

sample(c("HP","APPLE","LENOVO"),7,replace=T)
sample(c("HP","APPLE","LENOVO"),2)

############################################################

#Indexing in R starts with (1)

s =c(2,5,8,20,10,30,58)

s[3]
s[4]
s[c(4,5)]

s[-1] # excludes the 1st element

s[-2] # excludes the 2nd element

s[c(-1,-5)]
s

s[-1]=5
s

s[c(1,2)]
s[3,4]  #raise an error

y = c(1,9,9,9)
y

y<9
y[y>3]=10
y


#Relational operators with vectors

marks = c(60,70,80,90)

marks>50

marks[marks>50]
marks==80

names = c("Kira","Pooja","Ganesh")
p1=c("a","b")

"Pooja" %in% names

"pooja"  %in% names


#SLICING

marks
marks[3:4]
marks[4]=44
marks
marks[-4]=44
marks
marks[5]=42
marks

price = c(11,55,22,44,66,88,99,77,33)
price[2:5]

price[price>44]
price

sort(price)
help(sort)

nth = paste(1:12, c('st','nd','rd',rep('th',9)))
nth

month.name
month.abb

paste(month.abb, "is the",nth,"month in the year")

#Basic functions on Vectors
price
length(price)
max(price)
min(price)
sum(price)
mean(price)
 
#Data Frames
#slicing data frames

a=c(42,18,91,87,66)
b=c("p","q","r","s","t")

data.frame(a,b)
df = data.frame(a,b)

df1 =data.frame(
  Training = c("Strength","Stamina","Other"),
  Pulse = c(100,200,300),
  Duration = c(60,70,80)
)
df1

df1[,1] #all rows, lst col

df1[2,]

df1[,3]

df1[,]

df2 = data.frame(
  height = c(150,160),
  weight = c(65,72)
)
df2

df3 = data.frame(
  name = c("Pav Bhaji","Paneer Masala", "Kaju Katli","Butter Chicken","Gulabjamun","Mutton Biryani"),
  type = c("Veg","Veg","Veg","Nonveg","Veg","Nonveg"),
  taste = c("Spicy","Spicy","Sweet","Spicy","Sweet","Spicy"),
  price = c(120,235,420,340,90,315)
)
df3

df3[df3$type=="Veg",]

df3[df3$type=="Nonveg",c(1,4)]

df3[df3$type=="Nonveg",c("name","price")]

#all spicy food with price less than 300

df3[df3$taste=="Spicy" & df3$price<300,]

df3[df3$taste=="Spicy" | df3$price<300,]

#Builtin dataframes
Orange

mtcars

dim(mtcars) #gives no of rows and columns
nrow(mtcars) #no. of rows
ncol(mtcars) #no. of columns
str(mtcars) #structure - col names data type and values
summary(mtcars)

help(mtcars) #info of dataset

mtcars$cyl #indivisual 

table(mtcars$cyl)# there are 11 cars having 4 cylinders, 7 cars - 6 cylinders. 14 cars - 8 cylinders

mtcars$gear

table(mtcars$gear)

#USSrrests - another dataset
USArrests
help("USArrests")
View(USArrests)  # dataset opens in new window in table structure

head(USArrests)  # by default shows first 6 records
tail(USArrests)
head(USArrests,8)
tail(USArrests,10)

#checks all available datasets
data()
