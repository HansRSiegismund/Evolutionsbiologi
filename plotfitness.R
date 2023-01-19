setwd("C:\\Users\\hsiegismund\\Documents\\My Dropbox\\Undervisning2\\Evolutionsbiologi\\2013\\Øvelser")
p<-seq(0,1,by= .01)
avew <-function(p){
w<-p^2*0.6 + 2*p*(1-p) +0.4*(1-p)^2
}
w<-avew(p)
pdf("avefitness.pdf", width=5, height=5)#, paper="a4")
plot(p,w,type="l",xlab="p",ylab="Gennemsnitlig fitness",cex.lab=1.5)
dev.off()

#Underdominans
avew <-function(p){
w<-p^2*1.4 + 2*p*(1-p) +1.6*(1-p)^2
}
w<-avew(p)

pdf("avefitnessud.pdf", width=5, height=5)#, paper="a4")
plot(p,w,type="l",xlab="p",ylab="Gennemsnitlig fitness", ylim=c(1.2,1.6), cex.lab=1.5)
dev.off()

