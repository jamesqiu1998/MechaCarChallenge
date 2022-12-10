## Deliverable 1

# 3.Import the dplyr library
library(dplyr)

#4. Import and read the csv as a dataframe
library(tidyverse)
mechacar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=FALSE,stringsAsFactors=FALSE)
head(mechacar_mpg)

# 5.Perform linear regression using lm().
lm(mpg~vehicle_length + vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mechacar_mpg)

# 6.Using the summary() function to determine the p-value and the r-squared value. 
summary(lm(mpg~vehicle_length + vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mechacar_mpg))

# Deliverable 2
# 2. Import and read the suspension_coil.csv file as a table
suspension <- read.csv(file='Suspension_Coil.csv',check.names = FALSE, stringsAsFactors = FALSE)
head(suspension)

# 3. Write an RScript that creates a total_summary df using summarize(). 
total_summary <- suspension %>% summarize(Mean=mean(PSI),
                                          Median=median(PSI),
                                          Vairance=var(PSI),
                                          SD=sd(PSI),.groups = 'keep')
head(total_summary)

# 4. Write an RScript that creates a lot_summary df using group_by() and summarize().
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                        Median=median(PSI),
                                                                        Variance=var(PSI),
                                                                        SD=sd(PSI),.groups='keep')
head(lot_summary)

# Part 3: T-test on suspension coils
# 1. Write an RScript using t.test() function.
t.test(suspension$PSI, mu=1500)

# 2. Write 3 more RScript using t.test() function and its subset().
lot1test <- subset(suspension,Manufacturing_Lot=='Lot1')
lot2test <- subset(suspension,Manufacturing_Lot=='Lot2')
lot3test <- subset(suspension,Manufacturing_Lot=='Lot3')

t.test(lot1test$PSI,mu=1500)
t.test(lot2test$PSI,mu=1500)
t.test(lot3test$PSI,mu=1500)