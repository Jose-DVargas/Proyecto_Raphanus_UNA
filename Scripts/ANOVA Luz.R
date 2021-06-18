#------------------------------------------------
# Initial steps: Packages & Functions
#------------------------------------------------
rm(list = ls()) # Remove all objects
graphics.off()  # Remove all graphics
cat("\014")     # Remove script in console
#------------------------------------------------
#Import the data set
#------------------------------------------------
library(readr)
data <- read.table("https://github.com/Jose-DVargas/Proyecto_Raphanus_UNA/blob/main/Data/luz.txt", header = TRUE, dec = ".", sep = "")

data <- read.table(file = "Data/luz.txt", header = TRUE, dec = ".", sep = "")
data
