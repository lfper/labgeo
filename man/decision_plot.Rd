% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/decision_plot.R
\name{decision_plot}
\alias{decision_plot}
\title{decisionplot dimension reduction}
\source{
<http://michael.hahsler.net/SMU/EMIS7332/R/viz_classifier.html>
}
\usage{
decision_plot(model, df, class = NULL, predict_type = "class",
  resolution = 100, showgrid = TRUE, ...)
}
\arguments{
\item{model}{model adjusted}

\item{df}{dataframe with data}

\item{class}{name of outcome variable}

\item{predict_type}{name of outcome variable}

\item{resolution}{resolution of graphic in ppi. Default is 100ppi}

\item{showgrid}{Logical. Control if show or not the grid over the graphic.}

\item{...}{aditional parameters}
}
\description{
The following plot adds the decision boundary by evaluating the classifier at evenly spaced grid points
}
\details{
details
}
\examples{
\dontrun{
model <- knn3(Species ~ ., data=x, k = 1)
decisionplot(model, x, class = "Species", main = "kNN (1)")
}
}
\keyword{boundary}
\keyword{decision}
