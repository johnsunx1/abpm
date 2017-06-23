#########################################################################################
## Package: abpm
## EXAMPLE FOR model.R
#########################################################################################

## Example:
##
d1<-done.abp[done.abp$TRTN==1 & done.abp$DOSE==1,]
fit1<-abpm.model(d1$DIFF, d1$ABPDBP1N, d1$STYSID1A, d1$TRTN, d1$DOSE, 
		method=1, span=0.25)
display.model(fit1,d1$DIFF, d1$ABPDBP1N, d1$STYSID1A,
visit=d1$DOSE)


fit2<-abpm.model(d1$DIFF, d1$ABPDBP1N, d1$STYSID1A, d1$TRTN, d1$DOSE, 
		method=2, span=0.25)
display.model(fit2,d1$DIFF, d1$ABPDBP1N, d1$STYSID1A,
visit=d1$DOSE)



fit3<-abpm.model(d1$DIFF, d1$ABPDBP1N, d1$STYSID1A, d1$TRTN, d1$DOSE, 
		method=3, nlme=1, cosinor.period=c(24,12))
display.model(fit3,d1$DIFF, d1$ABPDBP1N, d1$STYSID1A,
visit=d1$DOSE, pcol="lightgrey",fitcol="blue")


fitlist<-list(fit1=fit1, fit2=fit2, fit3=fit3)
display.allmodel(fitlist, d1$DIFF, d1$ABPDBP1N,
 d1$STYSID1A, d1$DOSE)
		
