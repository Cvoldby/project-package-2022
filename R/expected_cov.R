#' @title The Expected Covariance
#'
#' @description The purpose of this function is to calculate expected covariance at a site.
#'
#' @usage
#'
#' @param r vector with the number of pins that only touch plant species A in each plot at a site.
#' @param s vector with the number of pins that only touch plant species B in each plot at a site.
#' @param t vector with the number of pins that touch both plant species A and B in each plot at a site.
#' @param u vector with the number of pins that touch neither plant species A or B in each plot at a site.
#' @param n number of pins in a plot.
#' @param N number of plots at a site.
#'
#' @return single numeric value
#'
#' @author Christian Voldby, Data Science student at Aarhus University
#'
#' @examples
#'
#' @export
#'

expected_cov <- function(r, s, t, u, n = 16, N){
  t_bar <- sum(t) / N / n
  qa <- sum(r) / N / n
  qb <- sum(s) / N / n
  return(sum(t_bar) - n * qa * qb + n^(2 - 2 * n) * t_bar^n * (n^n * (qa + qb) - 2 * t_bar^n))
}
