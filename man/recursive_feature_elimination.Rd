% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/recursive_feature_elimination.R
\name{recursive_feature_elimination}
\alias{recursive_feature_elimination}
\title{Recursive Feature Elimination}
\usage{
recursive_feature_elimination(df, sizes = c(2:5, 10), index = NULL,
  nfolds = 5, repeats = 1, fun = caret::rfFuncs, method_rfe = NULL,
  cpu_cores = 6, metric = ifelse(is.factor(df[, 1]), "Kappa",
  "Rsquared"), seeds = NULL, verbose = TRUE)
}
\arguments{
\item{df}{dataframe, with income variable in the first column}

\item{sizes}{A numeric vector of integers corresponding to the number of features
that should be retained. Default = c(2:5,10)}

\item{index}{Users cross validation folds. Default = NULL}

\item{nfolds}{Number of folds to be build in cross-validation. Default = 10}

\item{repeats}{repeats}

\item{fun}{Default = rfFuncs , get importance values from Random Forest model.}

\item{method_rfe}{regression/classificiatio method to be used when fun = caretFuncs}

\item{cpu_cores}{Number of CPU cores to be used in parallel processing.
Default = 6. For avoid parallel execution set this parameter to zero.}

\item{metric}{metric used to evaluate model fit. For numeric outcome possible values are
("RMSE", "Rsquared) and for categorical outcome ("Accuracy","Kappa")}

\item{seeds}{seeds}

\item{verbose}{print results and execution time of function}
}
\description{
This function performs an recursive feature elimination using the rfe function from caret package.
This implentation of RFE uses parallel processing
}
\details{
This function implements backwards selection of predictors based on
predictor importance ranking. The predictors are ranked and the less
important ones are sequentially eliminated prior to modeling. The goal is to
find a subset of predictors that can be used to produce an accurate model.
The web page \url{http://topepo.github.io/caret/recursive-feature-elimination.html#rfe}
has more details and examples related to this function.

 details
}
\examples{
\dontrun{
rfe(df,sizes = c(2:10,12,15,20), cpu_cores = 4)
}
}
\author{
RFE by Max Kuhn

Elpidio Filho, \email{elpidio@ufv.br}
}
\keyword{Elimination}
\keyword{Feature}
\keyword{Recursive}
