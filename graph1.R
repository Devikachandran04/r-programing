x<-c(99,20,30,40)
plot(1,2,3)
plot(1:5, type="l",lwd=6 ,lty=1)
pie(x)
pie(x, init.angle=90, main="Rotated Pie Chart")
x = c(30, 20, 40, 10)

mylabe = c("Apple", "Mango", "Orange", "Grapes")
col = c("red", "yellow", "orange", "purple")

pie(x,
    labels = mylabe,
    col=col,
    main = "Fruit Pie Chart")
legend("left",mylabe,fill=col)
#barplot
barplot(x,names.arg=mylabe,col="black",width=c(1,10,2,20),horiz = TRUE,density=20)