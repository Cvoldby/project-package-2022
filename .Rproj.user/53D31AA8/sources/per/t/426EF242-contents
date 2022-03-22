# The distribution of pin-point hits for two species
#
# The purpose of the function is to act as a distribution of pin-point hits for two species.
#
# Four stochastic variables may be defined for each plot:
# - r := the number of pins that only touch plant species A.
# - s := the number of pins that only touch plant species B.
# - t := the number of pins that touch both plant species A and B.
# - u := the number of pint that touch neither species A or B.

# Spatial aggregation


twopinpoint <- function(r, s, t, u, N){


  return(dmultinom(x = c(r, s, u),
                   prob = c(pa, pb, 1 - pa - pb))
        * dbinom(x = t,
                 size = N,
                 prob = pab))
}
