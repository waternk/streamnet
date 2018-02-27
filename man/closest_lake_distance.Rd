% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lake_distance.R
\name{closest_lake_distance}
\alias{closest_lake_distance}
\title{Find the distance to the closest upstream lake}
\usage{
closest_lake_distance(lines, lakes, outlet, size_threshold = 4, map = FALSE)
}
\arguments{
\item{lines}{sf lines object}

\item{lakes}{sf polygon object}

\item{outlet}{integer row index of outlet reach relative to lines}

\item{size_threshold}{numeric size above which to consider as a lake}

\item{map}{logical show a map output of the results?}
}
\description{
Find the distance to the closest upstream lake
}
\examples{
\dontrun{
data(nhd_sub_lines)
data(nhd_sub_lakes)

outlet_reach   <- terminal_reaches(network = nhd_sub_lines,
                                   approve_all_dl = TRUE)
outlet <- which(outlet_reach$comid == nhd_sub_lines$comid)


closest_lake_distance(nhd_sub_lines, nhd_sub_lakes, outlet = outlet)
}
}