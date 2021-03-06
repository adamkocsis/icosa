% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/application.R
\docType{methods}
\name{locate}
\alias{locate}
\alias{locate,trigrid-method}
\alias{locate,hexagrid-method}
\title{Basic lookup function of coordinates on an icosahedral grid}
\usage{
locate(gridObj, ...)

\S4method{locate}{trigrid}(gridObj, data, randomborder = FALSE,
  output = "ui")

\S4method{locate}{hexagrid}(gridObj, data, output = "ui",
  randomborder = FALSE, forceNA = FALSE)
}
\arguments{
\item{gridObj}{a trigrid or hexagrid class object.}

\item{...}{arguments passed to class specific methods.}

\item{data}{Coordinates of individual points. Can be either a two-dimensional 
matrix of long-lat coordinates, a three-dimensional matrix of XYZ coordinates, 
or a set of points with class 'SpatialPoints'.}

\item{randomborder}{Logical value. Defaults to FALSE. If TRUE, then the points
falling on vertices and edges will be randomly assigned, otherwise they will be kept as NAs.}

\item{output}{Character value either "ui" or "skeleton". ui returns the face 
names used in the user interface, while "skeleton" returns their 
indices used in back-end procedures.}

\item{forceNA}{logical value, suppressing the recursive lookup of points falling on subface boundaries.}
}
\value{
The function returns the cell names where the input coordinates fall.
}
\description{
Basic lookup function of coordinates on an icosahedral grid
}
\examples{
# create a grid 
g <- trigrid(4)
# some random points
randomPoints<-rpsphere(4, output="polar")
# cells
locate(g, randomPoints)
}
