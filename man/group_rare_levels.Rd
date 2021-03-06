% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/misc2.R
\name{group_rare_levels}
\alias{group_rare_levels}
\title{Group rare levels of a factor variable}
\usage{
group_rare_levels(vx, min_num = 20, other = 99)
}
\arguments{
\item{vx}{vector with factor variable}

\item{min_num}{minumun frequency of a factor}

\item{other}{name of group of rare factos}
}
\description{
Group rare levels of a factor variable
}
\examples{
\dontrun{
vx = train$solo_tex; min_num = 20; other = 99
}
}
