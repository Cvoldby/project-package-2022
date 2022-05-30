#' @title cover_data_manipulation
#'
#' @description Data manipulation:
#' The purpose of this function is to retrieve the data of interest.
#'
#' @usage
#'
#' @param
#'
#' @return
#'
#' @author Christian Voldby, Data Science student at Aarhus University
#'
#' @examples
#'
#' @export
#'

cover_data_manipulation <- function(data, plant1_id, plant2_id, min_number_of_sites){
  cdm <- data[c(1:3, grep(plant1_id, colnames(cover)), grep(plant2_id, colnames(cover)))]

  cdm <- cdm[cdm[[4]] > 0 & tst_cover[[5]] > 0, ]

  temp_list <- c()
  L <- unique(cdm[c("site")])

  for (i in 1:length(table(cdm$site))) {
    if (table(cdm$site)[i] > 30) {
      temp_list <- c(temp_list, L[i,])
    }
  }

  cdm <- subset(cdm, site %in% temp_list)

  return(cdm)
}
