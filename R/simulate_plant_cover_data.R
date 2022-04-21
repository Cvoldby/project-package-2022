#' @title simulate_plant_cover_data
#'
#' @description The purpose of this function is to simulate N plots of plant cover data. Thus returning r, s, t, u.
#'
#' @usage
#'
#' @param N the number of plots in a site.
#'
#' @return matrix(r, s, t, u)
#'
#' @author Christian Voldby, Data Science student at Aarhus University
#'
#' @examples
#' N <- 45
#' simulate_plant_cover_data(N)
#'
#' @export
#'

simulate_plant_cover_data <- function(N){
  r <- vector("integer", N)
  s <- vector("integer", N)
  t <- vector("integer", N)
  u <- vector("integer", N)

  i <- 1
  for (i in 1:N) {
    r[[i]] <- sample(0:16, 1)
    s[[i]] <- sample(0:(16 - r[[i]]), 1)
    t[[i]] <- sample(0:(16 - r[[i]] - s[[i]]), 1)
    u[[i]] <- 16 - r[[i]] - s[[i]] - t[[i]]
  }
  return(cbind(r, s, t, u))
}
