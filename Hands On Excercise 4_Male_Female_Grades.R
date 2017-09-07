setwd("C://Users//Ankur//Downloads//student")
d1=read.table("student-mat.csv",sep=";",header=TRUE)
d2=read.table("student-por.csv",sep=";",header=TRUE)

student_merge=merge(d1,d2,by=c("school","sex","age","address","famsize","Pstatus","Medu","Fedu","Mjob","Fjob","reason","nursery","internet"))
print(nrow(student_merge)) # 382 students
View(student_merge)

# Analysis of  student performance in Math by downloading 
# https://archive.ics.uci.edu/ml/datasets/student+performance datasets
#  Q(1) Answer following questions - 
#         a) What is average Grades for Male and Female students
#         b) Which combination of Guardian and Sudent Gender has 
#            highest Grades for G1, G2 and G3

# SOlution of a is as follows:

student_merge_female <- student_merge[student_merge$sex %in% 'F',]
View(student_merge_female)
st_fem_avg_g1x <- mean(student_merge_female$G1.x)
st_fem_avg_g1y <- mean(student_merge_female$G1.y)
st_fem_avg_g2x <- mean(student_merge_female$G2.x)
st_fem_avg_g2y <- mean(student_merge_female$G2.y)
st_fem_avg_g3x <- mean(student_merge_female$G3.x)
st_fem_avg_g3y <- mean(student_merge_female$G3.y)

student_merge_male <- student_merge[student_merge$sex %in% 'M',]
View(student_merge_male)

st_male_avg_g1x <- mean(student_merge_male$G1.x)
st_male_avg_g1y <- mean(student_merge_male$G1.y)
st_male_avg_g2x <- mean(student_merge_male$G2.x)
st_male_avg_g2y <- mean(student_merge_male$G2.y)
st_male_avg_g3x <- mean(student_merge_male$G3.x)
st_male_avg_g3y <- mean(student_merge_male$G3.y)

# SOlution of b is as follows:

## PARt 2

max_G1 = max(d3$G1.x + d3$G1.y)
max_G2 = max(d3$G2.x + d3$G2.y)
max_G3 = max(d3$G3.x + d3$G3.y)

for(j in 1:length(d3$G3.x))
{  
  if(d3$G1.x[j]+d3$G1.y[j] == max_G1)
  {Guardian_G1 = d3$guardian.x[j]
  Gender_G1 = d3$sex[j]
  }
}  
Guardian_G1
Gender_G1

for(j in 1:length(d3$G3.x))
{  
  if(d3$G2.x[j]+d3$G2.y[j] == max_G1)
  {Guardian_G2 = d3$guardian.x[j]
  Gender_G2 = d3$sex[j]
  }
}  
Guardian_G2
Gender_G2

for(j in 1:length(d3$G3.x))
{  
  if(d3$G3.x[j]+d3$G3.y[j] == max_G1)
  {Guardian_G3 = d3$guardian.x[j]
  Gender_G3 = d3$sex[j]
  }
}  
Guardian_G3
Gender_G3
