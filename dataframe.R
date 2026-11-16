d<-data.frame(
empid=c("12","27","88"),
dob=as.Date(c("2008-02-12","2004-11-06","2005-01-22")),
sal=c(21110,100000,84545),
int=c(5000,10000,8000))
d$Total=d$sal+d$int
nrow(d)
d$Avg<-d$Total/nrow(d)
d
d<-cbind(d,ag=c(21,25,89))
mean(d$Total)
names(which.max(table(d$Total)))


#Count vowels and consonants
s<-as.character(readline(prompt = "enter your string"))
v<-0
c<-0
for (i in 1:nchar(s)){
  ch=substr(s,i,i)
  if(ch %in%c("a","e","i","o","u")){
    v=v+1
  }else{
    c=c+1
  }
}
v
c