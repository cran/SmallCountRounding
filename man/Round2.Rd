% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Round2.R
\encoding{UTF8}
\name{Round2}
\alias{Round2}
\title{Small count rounding by various methods}
\usage{
Round2(data, control, ..., method = c("roundtabs", "viadummy", "viadummyAll"))
}
\arguments{
\item{data}{Input data.frame. Same as input parameter \code{A} to \code{makeroundtabs()}}

\item{control}{As input to \code{makeroundtabs()}}

\item{...}{Other paramameters as input to \code{makeroundtabs()}}

\item{method}{One of "roundtabs" (default), "viadummy", "viadummyAll" (\code{allTerms=TRUE})}
}
\value{
Output from  \code{\link{makeroundtabs}} or \code{\link{RoundViaDummy2}}
}
\description{
Run \code{makeroundtabs()} or \code{RoundViaDummy2()}
}
\examples{
\dontrun{
z <- SmallCountData("sosialFiktiv")
d <- list(c("region","mnd") , c("hovedint","mnd2") , c("fylke","hovedint","mnd2") , 
          c("kostragr","hovedint","mnd"))
con <- MakeControl(d,z)
sor <- names(z)[c(4,5,3,2,1)]

roundedA <-  Round2(data=z,b=3,d=d,micro=FALSE,sort=sor,control=con, nin="ant",nout="Rndtall",
                    minit=2,maxit=10,maxdiff=5,seed=123,method="roundtabs")
roundedB <-  Round2(data=z,b=3,d=d,micro=FALSE,sort=sor,control=con, nin="ant",nout="Rndtall",
                    minit=2,maxit=10,maxdiff=5,seed=123,method="viadummy")
#10 rows of rounded data
roundedA$Ar[1:10,]  #"roundtabs"
cbind(z,roundedB$yInner)[1:10,] #"viadummy"

# recalculate maxdiff  nMaxdiff
dA <- FindMaxDiff(roundedA$Ar,con,"ant","m")
dB <- FindMaxDiff(z,con,roundedB$yInner[,1],roundedB$yInner[,2])

# Formula from d and control
Lists2formula(d,con,z)

# Formula from another d
d2 <-list(sor)
Lists2formula(d2,con,z)
Lists2formula(d2,con) # Without knowing data
Lists2formula(d2,data=z) # Without control
Lists2formula(d2,data=z) # Without control and data
}
}
\seealso{
\code{RoundKostra} (SSB internal), \code{\link{RoundViaDummy}}, \code{\link{Lists2formula}}, \code{\link{MakeControl}}, \code{\link{FindMaxDiff}}
}
\keyword{internal}
