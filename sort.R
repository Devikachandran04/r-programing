n<-as.integer(readline(prompt = "enter limit"))
a<-as.integer()
for(i in 1:n){
  x<-as.integer(readline("enter element"))
  a<-append(a,x)
}
a
#SORTING WITHOUT FUNTCION
for(i in 1:(n-1)){
  for(j in (i+1):n){
    if(a[i]>a[j]){
      temp<-a[i]
      a[i]<-a[j]
      a[j]<-temp
    }
  }
}
print(a)
#function
mysort<-function(a){
  for(i in 1:(n-1)){
    for(j in (i+1):n){
      if(a[i]>a[j]){
        temp<-a[i]
        a[i]<-a[j]
        a[j]<-temp
      }
    }
  }
  return (a)
}
print(mysort(a))

for (i in 1:n){
  if (a[i] %% 2!=0){
    print("odd")
  }else{
    print("even")
  }
}

#prime or not

p<-as.integer(readline("enter no"))
flag<-0
for(i in 2:(p%/%2)){
  if(p%%i==0){
    flag<-1
    break
  }
}
if(flag==1){
  print("not prime")
}else{
  print("prime")
  
}

#function
p<-as.integer(readline("enter no"))
flag<-0
pr<-function(p){
for(i in 2:(p%/%2)){
  if(p%%i==0){
    flag<-1
    break
  }
}
if(flag==1){
  return("not prime")
}else{
  return("prime")
  
}
}
print(pr(p))

#Armstrong

n<-as.integer(readline("enter no"))
m<-n
r<-0
ar<-function(n){
while(n>0){
  ld<-n%%10
  r<-r+ld*ld*ld
  n<-n%/%10
  
}
if(m==r){
  return("yes")
}else{
  return("no")
}}
print(ar(n))


#Sum of squares and cubes of n inputs
n<-as.integer(readline("enter n"))
ss<-0
sc<-0
for(i in 1:n){
  ss<-ss+i*i
  sc<-sc+i*i*i
}

ss




