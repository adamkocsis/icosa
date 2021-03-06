% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/application.R
\name{edgelength}
\alias{edgelength}
\title{Lengths of grid edges}
\usage{
edgelength(gridObj, ...)
}
\arguments{
\item{gridObj}{A \code{trigrid} or \code{hexagrid} class object.}

\item{...}{arguments passed to the class specific methods.}
}
\value{
A named numeric vector.
}
\description{
This function will return the length of all edges in the specified grid object.
}
\examples{
	g <- trigrid(3)
	edges <- edgelength(g, output="deg")
	edges

}
