#MechaCarChallenge

##
#Part 1

#Import library
library(dbplyr)
#Create dataframe 'df' from imported csv
df <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

#create multi-linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=df)) 

##
#Part 2
#Import library if needed.
#library(tidyverse)
#Create dataframe 'dfTwo' from imported csv
dfTwo <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

#Create a 'total_summary' dataframe using summarize()
total_summary <- dfTwo %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Create a 'lot_summary' dataframe to group each manufacturing lot.
lot_summary <- dfTwo %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
