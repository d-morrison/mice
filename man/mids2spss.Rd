% Generated by roxygen2 (4.0.1): do not edit by hand
\name{mids2spss}
\alias{mids2spss}
\title{Export \code{mids} object to SPSS}
\usage{
mids2spss(imp, filedat = "midsdata.txt", filesps = "readmids.sps",
  path = getwd(), sep = "\\t", dec = ".", silent = FALSE)
}
\arguments{
\item{imp}{The \code{imp} argument is an object of class \code{mids},
typically produced by the \code{mice()} function.}

\item{filedat}{A character string describing the name of the output data
file.}

\item{filesps}{A character string describing the name of the output syntax
file.}

\item{path}{A character string containing the path of the output file. The
value in \code{path} is appended to \code{filedat} and \code{filesps}. By
default, files are written to the current \code{R} working directory. If
\code{path=NULL} then no file path appending is done.}

\item{sep}{The separator between the data fields.}

\item{dec}{The decimal separator for numerical data.}

\item{silent}{A logical flag stating whether the names of the files should be
printed.}
}
\value{
The return value is \code{NULL}.
}
\description{
Converts a \code{mids} object into a format recognized by SPSS, and writes
the data and the SPSS syntax files.
}
\details{
This function automates most of the work needed to export a \code{mids}
object to SPSS. It uses a modified version of \code{writeForeignSPSS()} from
the \code{foreign} package. The modified version allows for a choice of the
field and decimal separators, and makes some improvements to the formatting,
so that the generated syntax file is amenable to the \code{INCLUDE} statement
in SPSS.

Below are some things to pay attention to.

The \code{SPSS} syntax file has the proper file names and separators set, so
in principle it should run and read the data without alteration. \code{SPSS}
is more strict than \code{R} with respect to the paths. Always use the full
path, otherwise \code{SPSS} may not be able to find the data file.

Factors in \code{R} translate into categorical variables in \code{SPSS}. The
internal coding of factor levels used in \code{R} is exported. This is
generally acceptable for \code{SPSS}. However, when the data are to be
combined with existing \code{SPSS} data, watch out for any changes in the
factor levels codes. The \code{read.spss()} in package \code{foreign} for
reading \code{.sav} uses its own internal numbering scheme \code{1,2,3,...}
for the levels of a factor. Consequently, changes in factor code can cause
discrepancies in factor level when re-imported to \code{SPSS}. The solution
is to manually recode the factor level in \code{SPSS}.

\code{SPSS} will recognize the data set as a multiply imputed data set, and
do automatic pooling in procedures where that is supported. Note however that
pooling is an extra option only available to those who licence the
\code{MISSING VALUES} module. Without this licence, \code{SPSS} will still
recognize the structure of the data, but not do any pooling.
}
\author{
Stef van Buuren, dec 2010.
}
\seealso{
\code{\link[=mids-class]{mids}}
}
\keyword{manip}

