#factorial
#without fn
n<-as.integer(readline(prompt = "enter kimit"))
f<-1
if(n==0){
  print(0)
}else{
for(i in 1:n){
  f<-f*i
}
  print(f)}

#with function
n<-as.integer(readline(prompt = "enter kimit"))
f<-1
fact<-function(n){
  if(n==0){
    return(0)
  }else{
    for(i in 1:n){
      f<-f*i
    }
    return (f)
  }
}
print(fact(n))
#by recursion
n<-as.integer(readline(prompt = "enter kimit"))
f<-1
fact<-function(n){
  if(n==0){
    return(1)
  }else{
    return (n*fact(n-1))
  }
}
print(fact(n))