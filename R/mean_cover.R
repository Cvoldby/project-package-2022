#' @title mean cover
#'
#' @description The purpose is to estimate mean plant cover at a site.
#'
#' @usage
#'
#' @param data the cover data.frame
#' @param site_id the site of interest
#' @param species_id identifier for a species in the cover data.
#'
#' @return single numeric value
#'
#' @author Christian Voldby, Data Science student at Aarhus University
#'
#' @examples
#'
#' @export
#'

mean_cover <- function(data, site_id, species_id){
  tmp_data <- data[c("site", "plot", "year", species_id)]
  tmp_data <- tmp_data[tmpdata$site == site_id, ]
  return(sum(tmp_data) / (length(tmp_data) * 16) )
}


