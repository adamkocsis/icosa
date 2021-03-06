% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sp2d.r
\docType{methods}
\name{lines,trigrid-method}
\alias{lines,trigrid-method}
\title{Lines method for the trigrid and hexagrid classes}
\usage{
\S4method{lines}{trigrid}(x, projargs = NULL, ...)
}
\arguments{
\item{x}{the trigrid or hexagrid class object.}

\item{projargs}{a projection string for the transformation fo coordinates. Accepts both a CRS class object and a character string that will be transformed to the CRS class.}

\item{...}{arguments passed to the sp::lines() method of the SpatialPolygons class.}
}
\description{
This function will invoke the \code{lines()} method of the SpatialPolygons class.
}
