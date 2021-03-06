% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/printMethod.R
\name{printMethod}
\alias{printMethod}
\alias{printMethods}
\title{Pretty print methods in a BenchDesign object}
\usage{
printMethod(bd, n = NULL)

printMethods(bd)
}
\arguments{
\item{bd}{BenchDesign object.}

\item{n}{name of a method in the BenchDesign to show.}
}
\value{
Brief description is returned to console.
}
\description{
Print out details about a method included in
the BenchDesign. The \code{printMethods} function is just a wrapper
to call \code{printMethod} on all methods in the BenchDesign.
}
\examples{
## create empty BenchDesign
bench <- BenchDesign()

## currently no methods
printMethods(bench)

## add method
bench <- addMethod(bench, label = "method_a", p.adjust)
bench <- addMethod(bench, label = "method_b", qvalue::qvalue)

## show a single method
printMethod(bench, "method_a")

## show all methods
printMethods(bench)

}
\seealso{
\code{\link{BDMethod-class}}, \code{\link{BenchDesign-class}}
}
\author{
Patrick Kimes
}
