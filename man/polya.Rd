\name{
polya
}
\alias{
polya
}
\title{
Polya-Eggenberger distribution of pin-point hits for a single species
}
\description{
The purpose of this function is to calculate the Polya-Eggenberger distribution with parameters.
}
\usage{
polya(x, delta, q, n = 16)
}
\arguments{
  \item{x}{
  vector of quantiles
  }
  \item{delta}{
  The parameter for the intra-plot correlation
  }
  \item{q}{
  The parameter for the mean cover.
  }
  \item{n}{
  The number of pins in a plot. For the cover pin-point data the default number is 16.
  }
}
\details{
There are no further details
}
\value{
Single value
}
\references{
The version of the Polya-Eggenberger distribution is from a Article
}
\author{
Christian Voldby, data science student at Aarhus Univerisity
}

\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function compute P
polya(x, delta = 0.1, q = 0.1, n = 16)
{
  }
}

