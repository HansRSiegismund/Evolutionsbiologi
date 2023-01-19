setwd("C:\\Users\\xqw884\\Dropbox\\Undervisning2\\Evolutionsbiologi\\Forelæsninger\\Selektion\\Øvelse")
wA <- 0.75
wB <- 1
p<-seq(0,1,by= .01)
q <- 1 -p
avew <-function(p){
w<-p*wA + wB*(1-p)
}



w<-avew(p)
pdf("avefitness_hap.pdf", width=5, height=5)#, paper="a4")
plot(q,w,type="l",xlab="p(B)",ylab="Gennemsnitlig fitness",cex.lab=1.5,col="darkolivegreen")
dev.off()



pdf("avefitness.pdf", width=5, height=5)#, paper="a4")
plot(q,w,type="l",xlab="p(B)",ylab="Gennemsnitlig fitness",cex.lab=1.5,col="darkolivegreen")
dev.off()

#Underdominans
avew <-function(p){
w<-p^2*1.4 + 2*p*(1-p) +1.6*(1-p)^2
}
w<-avew(p)

pdf("avefitnessud.pdf", width=5, height=5)#, paper="a4")
plot(p,w,type="l",xlab="p",ylab="Gennemsnitlig fitness", ylim=c(1.2,1.6), cex.lab=1.5)
dev.off()

