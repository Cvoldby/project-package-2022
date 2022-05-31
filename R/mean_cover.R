#' @title mean cover
#'
#' @description The purpose is to estimate mean plant cover at a site.
#' The value must be between 0 and 1.
#' The dataset is the 'alledata-cover . csv' provided by the instructor Christian Damsgaard.
#'
#' @usage mean_cover(data , site_id , species_id , year)
#'
#' @param data The 'alledata-cover . csv' data.frame.
#' @param site_id The site of interest.
#' @param species_id Identifier for a species in the cover data for instance X974.
#' @param year The year of interest. To not mix cover data from different years.
#'
#' @return Single numeric value
#'
#' @author Christian Voldby, Data Science student at Aarhus University
#'
#' @export
#'

mean_cover <- function(data, site_id, species_id, year){
  # assertions
  assert(class(site_id) == "integer", "The site_id must be a valid site id and an integer class")
  assert(class(species_id) == "character", "The species_id must be a valid species id and an character class")
  assert(class(year) == "integer", "The year must be an valid year and an integer class")

  tmp_data <- data[c("site", "plot", "year", species_id)] # Create data frame with the species of interest.

  tmp_data <- tmp_data[tmp_data$site == site_id & tmp_data$year == year, ]

  return(sum(tmp_data$species_id / 16) / length(tmp_data$species_id)) # Divide by 16 to make up for the number of pins in each plot.
}


