#------------------------------------------------
# Initial steps: Packages & Functions
#------------------------------------------------
rm(list = ls()) # Remove all objects
graphics.off()  # Remove all graphics
cat("\014")     # Remove script in console
options(digits = 3)
set.seed(2021) 
#------------------------------------------------
#libraries
#------------------------------------------------
library(readr)
library(ggplot2)
#------------------------------------------------
#Import the data set
#------------------------------------------------
data <- read.table(file = "https://raw.githubusercontent.com/Jose-DVargas/Proyecto_Raphanus_UNA/main/Data/luz.txt", header = TRUE, dec = ".", sep = "")
data
ds <- data.frame(data)
ds
#------------------------------------------------
#ANOVA
#------------------------------------------------
ds$Distancias <- as.factor(ds$Distancias)
ds$luz <- as.factor(ds$luz)

anova <- aov(formula = peso ~ luz + luz/Distancias, data = ds)
summary.lm(anova)
TukeyHSD(anova)


anova2 <- aov(formula = hojas ~ luz + luz/Distancias, data = ds)
summary.lm(anova2)
TukeyHSD(anova2)

