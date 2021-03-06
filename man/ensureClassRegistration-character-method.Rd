% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/ensureClassRegistration.r
\docType{methods}
\name{ensureClassRegistration,character-method}
\alias{ensureClassRegistration,character-method}
\title{Ensure Class Registration}
\usage{
\S4method{ensureClassRegistration}{character}(cl, strict = FALSE, ...)
}
\arguments{
\item{cl}{\code{\link{character}}.}

\item{strict}{\code{\link{logical}}.
\code{TRUE}: error if \code{cl} is already a class
(checked by \code{isClass});
\code{FALSE}: if class already exists it is not reset.}

\item{...}{Further arguments passed to subsequent functions/methods.
In particular:
\code{\link[methods]{setOldClass}}}
}
\value{
\code{\link{logical}}. \code{TRUE}.
}
\description{
See generic: \code{\link[classr]{ensureClassRegistration}}
}
\examples{
\dontrun{

## NOTE //
## Keeping the default for 'where'  that is used by 'setOldClass',
## i.e. simply *not* providing a value in the call to 'ensureClassRegistration',
## only works as long as your package has not been fully loaded yet
ensureClassRegistration(cl = "TestClass")
isClass("TestClass")
ensureClassRegistration(cl = "TestClass")
try(ensureClassRegistration(cl = "TestClass", strict = TRUE))
ensureClassRegistration(cl = c("TestClass1", "TestClass2"))
isClass("TestClass1")
isClass("TestClass2")

}
}
\author{
Janko Thyson \email{janko.thyson@rappster.de}
}
\references{
\url{http://github.com/rappster/classr}
}
\seealso{
\code{
   \link[classr]{ensureClassRegistration}
}
}

