# Polya-Eggenberger distribution.
#
# This function is a generalised binomial distribution.
#
# The purpose is the be a distribution of pin-point hits for a single species.

# This is a pochhammer function
pochhammer <- function(x, n){
  return(gamma(x + n) / gamma(x))
}

polya <- function(x, delta, q, n = 16){
  return(choose(n, x)
  * pochhammer(q * (1 / delta - 1), x)
  * pochhammer(((1 - delta) * (1 - q))/q, n - x)
  * 1 / pochhammer(1 / q - 1, n))
}

polya_mean <- function(n, q){
  return(n * q)
}

polya_var <- function(n, delta, q){
  return(n * (1 - q) * q * (1 - delta(1 - n)))
}
