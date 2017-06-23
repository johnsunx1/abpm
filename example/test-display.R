#########################################################################################
## Package: abpm
## EXAMPLE FOR display.R
#########################################################################################


display.ind(done.abp$DIFF, done.abp$ABPDBP1N, done.abp$STYSID1A, 
done.abp$TRTN, done.abp$DOSE, night=c(20,25), type=c("n", "smooth"), main="test",
xlab="test", span=0.25
)


display.pop(done.abp$DIFF, done.abp$ABPDBP1N, done.abp$STYSID1A, done.abp$TRTN, 
 done.abp$DOSE, night=c(20,25), ylim=c(60,120), layout=c(1,3), page=T)

d1<-done.abp[done.abp$TRTN==1 & done.abp$DOSE==1,]
fit1<-abpm.model(d1$DIFF, d1$ABPDBP1N, d1$STYSID1A, d1$TRTN, d1$DOSE, 
		method=1, span=0.25)
display.model(fit1,d1$DIFF, d1$ABPDBP1N, d1$STYSID1A,
visit=d1$DOSE)



proplist<-abpm.percent(done.abp$DIFF, done.abp$ABPDBP1N, done.abp$STYSID1A, done.abp$TRTN,done.abp$DOSE)
display.percent(proplist, page=T)

#display.ind(done.abp$ADJTIME, done.abp$ABPDBP1N, done.abp$STYSID1A, done.abp$TRTN, 
#done.abp$DOSE, night=c(15,23))
#display.ind(my.abp$time.diff.hr, my.abp$ABPDBP1N, my.abp$STYSID1A, my.abp$TRTN, 
#my.abp$DOSE, night=c(15,23))

#display.ind(done.abp$DIFF, done.abp$ABPDBP1N, done.abp$STYSID1A, done.abp$TRTN, done.abp$DOSE, night=c(20,25))
