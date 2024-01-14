#ZD ANALYSIS
#K-FUNCTION ANALYSIS

#clean the environnement
rm(list=ls())

#set the working directory

dir<-setwd("C:/Users/arman/OneDrive/Kikwit fieldwork Sept_Oct 2022/ZD R analysis")


library(haven)
library(maptools)
library(rgdal)
library(shapefiles)
library(spatstat)
library(splancs)

#import the dataset

df<-read_spss("path/ZD R analysis/zd_data.sav")


#pattern object

df_unique <- unique(df[c("latitud", "longitud")])

# Create a point pattern
point_pattern <- ppp(df_unique$longitud, df_unique$latitud, window = owin(c(min(df_unique$longitud), max(df_unique$longitud)), c(min(df_unique$latitud), max(df_unique$latitud))))

# Calculate the K-function
k_function <- Kest(point_pattern)

# Plot the K-function
plot(k_function, main = "K-function", xlab = "r", ylab = "K(r)")

# Calculate the K-function
k_function <- Kest(point_pattern)

# Plot the K-function
plot(k_function, main = "K-function", xlab = "r", ylab = "K(r)")