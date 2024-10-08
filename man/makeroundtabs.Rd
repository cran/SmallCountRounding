% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/makeroundtabs.R
\encoding{UTF8}
\name{makeroundtabs}
\alias{makeroundtabs}
\title{function makeroundtabs}
\usage{
makeroundtabs(
  A,
  b = 3,
  d,
  micro = "TRUE",
  sort,
  control,
  nin = "n",
  nout = "n",
  minit = 3,
  maxit = 3,
  maxdiff = 5,
  seed
)
}
\arguments{
\item{A}{A data frame representing a micro dataset or a frequency count hypercube. The (first) columns
define the variables. If A is a hypercube the last column contains the number of units in each cell.
If A is a micro dataset it is reduced to hypercube by the function aggrtab.}

\item{b}{Rounding base. Counts in A less than b tat are contributing to counts less than b in the marginal 
cubes D are selected from A. The selected dataframe is called B}

\item{d}{A list d\{[[j]]\} whose elements are vectors of variable names from A defining marginal tables/cubes D
of A that we are interested in.}

\item{micro}{Logical. TRUE if A is a micro dataset (default). FALSE if A i a frequency count hypercube.}

\item{sort}{An ordered list of variables in hypercubes in D meant for priority sorting of the reduced 
hypercube B before rounding. Not all variables in D should be included.}

\item{control}{A list of marginals of the hypercubes in D where deviations of aggregated rounded counts
are checked against original counts.}

\item{nin}{Name of count variable if A is a hypercube. Default name: "n".}

\item{nout}{Name of the frequency count variable in the output tables.}

\item{minit}{Minimum number of searches to be carried out.}

\item{maxit}{Maximum number of searches to be carried out.}

\item{maxdiff}{If maximum difference in "control" is no larger than maxit, the stop search.}

\item{seed}{Input seed for first systematic random search.}
}
\value{
Ar: The rounded version of A
   
   Br: The rounded version of B
   
   D: The original hypercube of interest.
   
   Dr: The rounded version of D. The final table of interest.
   
   maxdiff: The largest absolute difference between cells D and Dr among cells in the control list.
   
   nmaxdiff: The number of occurences if Maxdiff
}
\description{
This function creates a set of consistently rounded frequency count tables or
hypercubes by means of a version of small count rounding.
}
\seealso{
Dependencies:  \code{\link{aggrtab}}, \code{\link{redcube}}, \code{\link{roundcube}}
}
\author{
Johan Heldal, January 2018
}
\keyword{internal}
