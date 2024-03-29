% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grid-sf-polygons.R
\name{newsf}
\alias{newsf}
\alias{newsf,trigrid-method}
\title{Add a \code{\link[sf:sf]{sf}} object to a predefined slot in a \code{\link{trigrid}} or \code{\link{hexagrid}} object}
\usage{
newsf(x, res = NULL)

\S4method{newsf}{trigrid}(x, res = NULL)
}
\arguments{
\item{x}{(\code{\link{trigrid}} or \code{\link{hexagrid}}) An icosahedral grid.}

\item{res}{(\code{numeric}) The number of points inserted between two vertices, passed to \code{\link{SpPolygons}}.}
}
\value{
A \code{\link{trigrid}} or \code{\link{hexagrid}} object with the new \code{@sf} slot.
}
\description{
Add a \code{\link[sf:sf]{sf}} object to a predefined slot in a \code{\link{trigrid}} or \code{\link{hexagrid}} object
}
\examples{
a<-trigrid(4)
a<-newsf(a)
plot(a)
}
