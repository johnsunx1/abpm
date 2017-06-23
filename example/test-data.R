#########################################################################################
## Package: abpm
## EXAMPLE FOR data.R
#########################################################################################

date<-abpm.date(s.abp$ABPDBP1N,s.abp$ABPSBP1N, s.abp$ABPSMD1O, s.abp$REA1O, time.abs=T)
data<-cbind(s.abp, date)
my.abp<-abpm.clean(data)

t<-abpm.change(done.abp$DIFF, done.abp$ABPDBP1N, done.abp$STYSID1A, done.abp$TRTN, done.abp$DOSE, 1)
display.ind(t$time, t$change, t$subject, t$visit, t$trt, subset.no=30, type=c("n","smooth"))

# example: 
#date<-abpm.date(s.abp$ABPDBP1N,s.abp$ABPSBP1N, s.abp$ABPSMD1O, s.abp$REA1O, time.abs=T)
#data<-cbind(s.abp, date)
#my.abp<-abpm.clean(data)

## t<-abpm.change(done.abp$DIFF, done.abp$ABPDBP1N, done.abp$STYSID1A, done.abp$TRTN, done.abp$DOSE, 1)
# display.ind(t$time, t$change, t$subject, t$visit, t$trt, subset.no=30, type=c("n","smooth"))
