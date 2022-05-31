#' @title RSTU
#'
#' @description The purpose of this function is to easily get the r,s,t,u variables for a site.
#' The data must first be clean and ready for the process. This could be done by first applying the 'cover_data_manipulation' function.
#'
#' @usage rstu(cover_data)
#'
#' @param cover_data the cover data must only include the columns containing the cover data.
#'
#' @return matrix(r, s, t, u)
#'
#' @author Christian Voldby, Data Science student at Aarhus University
#'
#' @export
#'

rstu <- function(cover_data) {
  N <- length(cover_data[,1])
  r <- vector("integer", N)
  s <- vector("integer", N)
  t <- vector("integer", N)
  u <- vector("integer", N)

  i <- 1
  for (i in 1:N) {
    t[[i]] <- 0
    u[[i]] <- 0

    if (cover_data[i,1] + cover_data[i,2] > 16) {
      t[[i]] <- cover_data[i,1] + cover_data[i,2] - 16
      r[[i]] <- cover_data[i,1] - t[[i]]
      s[[i]] <- cover_data[i,2] - t[[i]]

    } else if (cover_data[i,1] + cover_data[i,2] < 16) {
      u[[i]] <- 16 - (cover_data[i,1] + cover_data[i,2])
      r[[i]] <- cover_data[i,1]
      s[[i]] <- cover_data[i,2]

    } else {
      r[[i]] <- cover_data[i,1]
      s[[i]] <- cover_data[i,2]
    }

  }

  return(cbind(r,s,t,u))
}
