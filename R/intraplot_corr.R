#' @title intra-plot correlation
#'
#' @description The purpose of this function is to estimate intra-plot correlation parameter that measures the within-site spatial aggregation of the plant species as the correlation between the outcomes of successive Bernoulli trials.
#'
#' @usage
#'
#' @param data the cover data.
#' @param site_id the site of interest.
#' @param species_id identifier for a species in the cover data.
#'
#' @return single numeric value.
#'
#' @author Christian Voldby, Data Science student at Aarhus University.
#'
#' @examples
#'
#' @export
#'

intraplot_corr <- function(data, site_id, species_id){
  tmp_data <- data[c("site", "plot", "year", species_id)]
  tmp_data <- tmp_data[tmpdata$site == site_id, ]
  return()
}
