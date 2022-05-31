#' @title cover_data_manipulation
#'
#' @description Data manipulation:
#' The purpose of this function is to easily obtain the data of interest from the cover data.
#' The dataset is the alledata-cover . csv provided by the instructor Christian Damsgaard.
#' Therefore the function must include the column 'site' from the dataset.
#'
#' @usage cover_data_manipulation(data, site_id, plant1_id, plant2_id, min_number_of_plots = 30)
#'
#' @param data The "alledata-cover.csv" data frame.
#' @param site_id The side id for the side of interest.
#' @param plant1_id The plant id must begin with a "X" followed by the id number.
#' @param plant2_id The plant id must begin with a "X" followed by the id number.
#' @param min_number_of_plots Positive integer.
#'
#' @return A data frame containing the relevant cover data for the two chosen plants.
#'
#' @author Christian Voldby, Data Science student at Aarhus University
#'
#' @export
#'

cover_data_manipulation <- function(data, site_id, plant1_id, plant2_id, min_number_of_plots = 30){
  # assertions
  assert(class(data) == "data.frame", "The data must be a data.frame class")
  assert(class(plant1_id) == "character" & plant2_id == "character", "The plant id must be valid.")
  assert(min_number_of_plots > 20 & class(min_number_of_plots) == "numeric", "The minimum number of plots must be in integer larger then 20.")


  cdm <- data[c(1:3, grep(plant1_id, colnames(data)), grep(plant2_id, colnames(data)))]

  cdm <- cdm[cdm[[4]] >= 0 & cdm[[5]] >= 0, ]

  temp_list <- c() # Only the sites with the desired minimum of plots are needed.
  L <- unique(cdm[c("site")])

  for (i in 1:length(table(cdm$site))) { # The loop only accept the sites with the desired minimum of plots.
    if (table(cdm$site)[i] > min_number_of_plots) {
      temp_list <- c(temp_list, L[i,])
    }
  }

  cdm <- subset(cdm, site %in% temp_list)

  return(cdm)
}
