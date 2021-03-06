% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{surfacecentroid}
\alias{surfacecentroid}
\title{Surface centroid point of a spherical point cloud}
\usage{
surfacecentroid(data, output = "polar", center = c(0, 0, 0),
  radius = authRadius)
}
\arguments{
\item{data}{Numeric matrix, XYZ or longitude-latitude coordinates of the set of points.}

\item{output}{Character value, the coordinate system of the output points. Can either be \code{"polar"} for
longitude-latitude or \code{"cartesian"} for XYZ data.}

\item{center}{Numeric vector, The center of the sphere in XYZ coordinates (default is 0,0,0).}

\item{radius}{Numeric value, the radius of the circle in case the input points have only polar coordinates.
Unused when XYZ coordinates are entered. Defaults to the authalic radius of Earth ca. 6371.007km.}
}
\value{
Either an XYZ or a long-lat numeric vector.
}
\description{
This function the projected place of the centroid from a pointset on the sphere
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
points<-allData[allData[,1]>3000,]
# the spherical centroid
sc <- surfacecentroid(points)
sc

#3d plot
plot3d(points)
points3d(sc[1], sc[2], sc[3], col="red", size=5)

}
