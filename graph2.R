getwd()
setwd("C:/Users/devik/OneDrive/Documents/r work")
x=read.csv("C:/Users/devik/OneDrive/Documents/r work/csv2graph.csv")
print(x[2,1])

y<-c(5,9,7,8)
z<-c(3,6,9,0)
labe<-c("a","b","c","d")
co<-c("blue","skyblue","violet","black","lightgreen","lavender")
plot(y,z,main="Y VS Z",xlab="852963",ylab="741852",type="b",col="violet",lty=3,lwd=5)
lines(y,c(8,9,4,4),col="red",lty=2,lwd=10,ylim=c(0,12))
legend("left",labe,fill=co)


pie(x$Marks,labels=x$Names,col=co)
pie(x$Marks,labels=x$Names,col=co,init.angle=90)
legend("bottomright",x$Names,fill=co)

D