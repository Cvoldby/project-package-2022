#' @title The Expected Covariance
#'
#' @description The purpose of this function is to calculate expected covariance at a site.
#'
#' @usage expected_cov(cover_data, species1_cover, species2_cover, n = 16, N)
#'
#' @param cover_data the 'alledata-cover . csv' provided by instructor Christian Damgaard.
#' @param species1_cover,species2_cover the id for the a species.
#' @param n The number of pins in a pin-point frame. For this dataset the number is 16.
#' @param N The number of plots at the site.
#'
#' @return single numeric value
#'
#' @author Christian Voldby, Data Science student at Aarhus University
#'
#' @export
#'

expected_cov <- function(cover_data, species1_cover, species2_cover, n = 16, N){
  q_hat <- mean_cover(data = cover_data, site_id = 4, species_id = "X974", year = 2007)

  t <- if(species1_cover + species2_cover - 16 > 0)
  t_bar <- sum(t) / N / n
  qa <- sum(species1_cover) / N / n
  qb <- sum(species2_cover) / N / n
  return(sum(t_bar) - n * qa * qb + n^(2 - 2 * n) * t_bar^n * (n^n * (qa + qb) - 2 * t_bar^n))
}
