\name{meat}
\alias{meat}
\title{A Simple Meat Matrix Estimator}
\description{
 Estimating the variance of the estimating functions of
 a regression model by cross products of the empirical
 estimating functions.
}
 
\usage{
meat(x, adjust = FALSE, \dots)
}
\arguments{
 \item{x}{a fitted model object.}
 \item{adjust}{logical. Should a finite sample adjustment be made?
    This amounts to multiplication with \deqn{n/(n-k)} where \deqn{n} is the
    number of observations and \deqn{k} the number of estimated parameters.}
 \item{\dots}{arguments passed to the \code{\link{estfun}} function.}
}

\details{For some theoretical background along with implementation
details see Zeileis (2006).
}

\value{A \deqn{k \times k}{k x k} matrix corresponding containing
the scaled cross products of the empirical estimating functions.}

\seealso{\code{\link{sandwich}}, \code{\link{bread}}, \code{\link{estfun}}}

\references{
  Zeileis A (2006), Object-Oriented Computation of Sandwich Estimators.
  \emph{Journal of Statistical Software}, \bold{16}(9), 1--16.
  URL \url{http://www.jstatsoft.org/v16/i09/}.
}

\examples{
x <- sin(1:10)
y <- rnorm(10)
fm <- lm(y ~ x)

meat(fm)
meatHC(fm, type = "HC")
meatHAC(fm)
}

\keyword{regression}
