% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stream_order.R
\name{stream_order_igraph}
\alias{stream_order_igraph}
\title{Calculate stream order with igraph}
\usage{
stream_order_igraph(tree)
}
\arguments{
\item{tree}{igraph tree object}
}
\description{
This function is experimental. The equivalent GRASS
function should be used in most cases.
}
\examples{
\dontrun{
tree <- create_reversed_tree(15)
igraph::E(tree)$weight <- stream_order_igraph(tree)
plot(tree, edge.width = igraph::E(tree)$weight,
         layout = layout_as_tree(tree, mode = "in"))
}
}
