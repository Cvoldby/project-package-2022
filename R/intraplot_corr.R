#' @title intra-plot correlation
#'
#' @description The purpose of this function is to estimate intra-plot correlation parameter that measures the within-site spatial aggregation of the plant species as the correlation between the outcomes of successive Bernoulli trials.
#'
#' @usage intraplot_corr(data, site_id, species_id, year)
#'
#' @param data the cover data.
#' @param site_id the site of interest.
#' @param species_id identifier for a species in the cover data.
#' @param year the year of interest.
#'
#' @return single numeric value.
#'
#' @author Christian Voldby, Data Science student at Aarhus University.
#'
#' @export
#'

intraplot_corr <- function(data, site_id, species_id, year){
  temp_data <- data[c("site", "plot", "year", species_id)]
  temp_data <- temp_data[temp_data$site == site_id & temp_data$year == year, ]

  ip_corr <- 0


  for (i in 1:(length(temp_data[,1]) - 1)) {
    p <- temp_data[i, 4] / 16
    q <- temp_data[i + 1, 4] / 16
    t_corr <-
    ip_corr <- ip_corr + t_corr
  }

  return()
}
