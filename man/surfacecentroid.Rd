% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils-spherical.R
\name{surfacecentroid}
\alias{surfacecentroid}
\alias{surfacecentroid,matrix-method}
\alias{surfacecentroid,data.frame-method}
\alias{surfacecentroid,SpatialPoints-method}
\title{Surface centroid point of a spherical point cloud}
\usage{
surfacecentroid(x, ...)

\S4method{surfacecentroid}{matrix}(x, output = "polar", center = c(0, 0, 0), radius = authRadius)

\S4method{surfacecentroid}{data.frame}(x, ...)

\S4method{surfacecentroid}{SpatialPoints}(x, ...)
}
\arguments{
\item{x}{(\code{matrix} or \code{data.frame}) Numeric data, XYZ or longitude-latitude coordinates of the set of points.}

\item{...}{Arguments passed to the \code{matrix}-method.}

\item{output}{(\code{character}) The coordinate system of the output points. Can either be \code{"polar"} for
longitude-latitude or \code{"cartesian"} for XYZ data.}

\item{center}{(\code{numeric}) The center of the sphere in XYZ coordinates (default is 0,0,0).}

\item{radius}{(\code{numeric}) The radius of the circle in case the input points have only polar coordinates.
Unused when XYZ coordinates are entered. Defaults to the authalic radius of Earth ca. 6371.007km.}
}
\value{
Either an XYZ or a long-lat \code{numeric} vector.
}
\description{
This function the projected place of the centroid from a pointset on the sphere.
}
\details{
The function implements great circle calculations to infer on the place of the centroid, which makes it resource demanding. This is necessary
to avoid a particual error that frequently occurrs with other methods for centroid calculation, namely that the place of the centroid is right,
	but on the opposite hemisphere.
}
\examples{
# generate some random points
allData <- rpsphere(1000)
# select only a subset
points<-allData[allData[,3]>1500,]
# transform to 2d
 points2 <- CarToPol(points, norad=TRUE)
# the spherical centroid
sc <- surfacecentroid(points2, output="polar")
sc

#3d plot
plot(points2, xlim=c(-180, 180), ylim=c(-90, 90))
points(sc[1], sc[2], col="red", cex=5, pch=3)

}
