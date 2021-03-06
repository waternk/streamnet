% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{raster2network}
\alias{raster2network}
\title{Convert a raster to stream network}
\usage{
raster2network(r, origin)
}
\arguments{
\item{r}{raster}

\item{origin}{index}
}
\description{
Convert a raster to stream network
}
\examples{
\dontrun{
library(raster)

foo <- matrix(0,ncol=9,nrow=9)
foo[1:4,3] <- 1
foo[5,4] <- 1
foo[6:9,5] <- 1
foo <- raster(foo)
origin <- which.min(apply(
             which(as.matrix(flip(foo, "y")) == 1, arr.ind = TRUE), 1, sum))
res <- raster2network(foo, origin)

mapview::mapview(res)
}
}
