library(MASS)
attach(Boston)
head(Boston)
mean(medv)
length(medv)
se.medv<-sqrt(var(medv)/506)
boot.fn<-function(data,index){
  mean(data[index])
}
boot.medv<-boot(medv,boot.fn,100)
t.test(medv)
boot.fn<-function(data, index) return(mean(data[index]))
ci.boot<-c(22.53281-1.96*0.4448838,22.53281+1.96*0.4448838)
median(medv)
boot.fn<-function(data, index){
  median(data[index])
} 
boot(medv, boot.fn, 100)
ten.perc.medv<-quantile(medv,0.1)
boot.fn<-function(data, index){
  quantile(data[index],0.1)
}
boot(medv,boot.fn,100)
boot.fn = function(data, index) return(quantile(data[index], c(0.1)))
