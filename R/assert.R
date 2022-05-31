#' @title assert
#'
#' @description The purpose of this function is to raise error messages in the case of a function receiving an invalid input.
#'
#' @usage assert(expr, error)
#'
#' @param expr Check Expression.
#' @param error A character string containing an error message for the assertion when it fails.
#'
#' @author Christian Voldby, Data Science student at Aarhus University
#'
#' @examples
#' delta <- 0.1
#' assert(delta > 0 & delta < 1, "delta must be between 0 and 1")
#'
#' @export
#'

assert <- function(expr, error){
  stopifnot(class(error) == "character")
  if (! expr) stop(error, call. = FALSE)
}
