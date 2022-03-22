# The Observed Covariance
#
# The purpose of this function is to calculate the observed covariance.
#
# The function for this observed covariance is corrected by the number of plots at a site.
#
# This is done such that the observed covariance may be compared with the expected covariance.
#
# The parameters of the function:
# - r must be a vector with the number of pins that only touch plant species A in each plot at a site.
# - s must be a vector with the number of pins that only touch plant species B in each plot at a site.
# - t must be a vector with the number of pins that touch both plant species A and B in each plot at a site.
# - u must be a vector with the number of pins that touch neither plant species A or B in each plot at a site.
# - N is the number of plots at a site.
#
observed_cov <- function(r, s, t, u, N){
  a = 1 / N
  return(a * (a * sum((r + t) * (s + t)) - a * sum(r + t) * a * sum(s + t)))
}
