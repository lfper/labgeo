# Model Performance
#'
#'
#' @title Model_Performance
#' @description This function performs the training of the chosen classifier
#' @param list_fit   list generated by funciot easy_model
#' @details details
#' @importFrom caret getTrainPerf
#' @examples
#' \dontrun{
#' dfperf = model_perfomance(l.fit)
#' }
#' @export

model_performance <- function(list_fit) {
  nr <- length(list_fit$models)
  nmodels <- length(list_fit$models[[1]])
  nt <- nr * nmodels
  df.result <- data.frame(
    variable = character(nt), method = character(nt), selec = character(nt),
    r2 = numeric(nt), rmse = numeric(nt), stringsAsFactors = FALSE
  )
  cont <- 1
  for (i in 1:nr) {
    ddd <- list_fit$models[[i]]
    n <- length(ddd)
    for (j in 1:n) {
      dddd <- ddd[[j]]
      df.result$variable[cont] <- unlist(list_fit$var[[i]])
      df.result$selec[cont] <- paste(
        unlist(list_fit$selec[[i]]),
        collapse = ","
      )
      df.result$method[cont] <- dddd$method
      df.result$rmse[cont] <- unlist(caret::getTrainPerf(dddd)[1])
      df.result$r2[cont] <- unlist(caret::getTrainPerf(dddd)[2])
      cont <- cont + 1
    }
  }
  return(df.result)
}
