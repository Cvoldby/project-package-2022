# project-package-2022
This is a R-package for a data science project. The package is created and maintained by Christian Voldby, a data science student at the univeristy of Aarhus University

The packages devtools and rozygen2 has been used in creating this R-package.

# Monitoring Plant Diversity In Denmark
The project deals with monitoring plant diversity in Denmark. The data is cover data and pin-point frame data. The aim of this R-package is to provide useful functions to assist in the analysis of the data. 

Key functions:
* Function: polya. The polya-eggenberger distribution is a beta-binomial mixture distribution, which is used to model pin-point plant cover data in a pin-point frame with n pins.

* Function: cover\_data\_manipulation. This data manipulation function is designed with the cover dataset in mind. Thus making it easy to get the data of the two species of interest.

* Covariance. The parameter of interest in regards to plant competition.

# Installation Guide
To get the current released version:
```R
install.packages("project-package-2022")
```
To get the current development version from github:
```R
# install.packages("devtools")
devtools::install_github("CVoldby/project-package-2022")
```

