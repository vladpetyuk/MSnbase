\name{exprsToRatios-methods}
\docType{methods}
\alias{exprsToRatios}
\alias{getRatios}
\alias{exprsToRatios-methods}
\alias{exprsToRatios,MSnSet-method}

\title{Calculate all ratio pairs}


\description{
  Calculations all possible ratios for the \code{assayData} columns in
  an \code{"\linkS4class{MSnSet}"}. The function
  \code{getRatios(x, log = FALSE)} takes a matrix \code{x} as input and
  is used by \code{exprsToRatios}.
}

\section{Methods}{
  \describe{
    \item{\code{signature(object = "MSnSet", log = "logical")}}{
      If \code{log} is FALSE (default) the ratios for all the
      \code{assayData} columns are computed; otherwise, log ratios
      (differences) are calculated. 
    }
  }
}

\examples{
data(itraqdata)
mst <- quantify(itraqdata, reporters = iTRAQ4)
pData(mst)
head(exprs(mst))
r <- exprsToRatios(mst)
head(exprs(r))
pData(r)
}

\keyword{methods}
