% Generated by roxygen2 (4.0.1): do not edit by hand
\name{mice.impute.ri}
\alias{mice.impute.ri}
\alias{ri}
\title{Imputation by the random indicator method for nonignorable data}
\usage{
mice.impute.ri(y, ry, x, ri.maxit = 10, ...)
}
\arguments{
\item{y}{Incomplete data vector of length \code{n}}

\item{ry}{Vector of missing data pattern (\code{FALSE}=missing,
\code{TRUE}=observed)}

\item{x}{Matrix (\code{n} x \code{p}) of complete covariates.}

\item{ri.maxit}{Number of inner iterations}

\item{\dots}{Other named arguments passed down to \code{.norm.draw()}}
}
\value{
A vector of length \code{nmis} with imputations.
}
\description{
Imputes univariate missing data using the random indicator method.
This method estimates an offset between the distribution of the
observed and missing data using an algorithm that iterates
over the response model and the imputation model.
}
\author{
Shahab Jolani (University of Utrecht) \email{s.jolani@uu.nl}
}
\references{
Jolani, S. (2012).
\emph{Dual Imputation Strategies for Analyzing Incomplete Data}.
Disseration. University of Utrecht, Dec 7 2012.
\url{http://igitur-archive.library.uu.nl/dissertations/2012-1120-200602/Jolani.pdf}
}
\keyword{datagen}

