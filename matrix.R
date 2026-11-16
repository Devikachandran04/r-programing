m1<-matrix(c(1,2,3,4,5,8),nrow = 3,ncol = 2)
m2<-matrix(c(5,2,9,7,4,1),nrow=3,ncol=2)
m1
m2
m1+m2
m1-m2
m1*m2

r<-as.integer(readline("enter r"))
c<-as.integer(readline("enter c"))

a<-matrix(0,nrow = r,ncol = c)
for(i in 1:r){
  for(j in 1:c){
    a[i,j]<-as.integer(readline("enter element"))
  }
}
a
b<-matrix(0,nrow=r,ncol=c)
for(i in 1:r){
  for(j in 1:c){
    b[i,j]<-as.integer(readline("enter b atrix"))
  }
}
b
a-b
a*b
a%/%b
target<-as.integer(readline("enter target"))
if(target %in% a){
  print("yes")
}else{
  print("no")
}
flag<-0
for(i in 1:r){
  for(j in 1:c){
    if (target== a[i,j]){
      print(paste(i,",",j),quote=FALSE)
      flag<-1
    }
  }
}
if(flag==0){
  print("not present")
}