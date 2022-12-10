# MechaCarChallenge
## Overview
- To assist Jeremy with analyzing statistics using R programming language and Rstudio to populate data based on given dataset. 

  1. Perform multiple linear regression analysis to identify which variables in the dataset predict the  mpg of MechaCar prototypes.<br>
  2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.<br>
  3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population.<br>
  4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.


## Linear Regression to Predict MPG

<img width="565" alt="image" src="https://user-images.githubusercontent.com/104419959/206877557-8619ac51-1792-41c5-a29b-ce457d3934f3.png">

**Q.** Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?<br>
**ANS :**  In the above statistics, we can observe that only **Vehicle_Length** and **Ground_Clearance** provides a non-random amount of variance to the mpg claues in the dataset. 
 
**Q.** Is the slope of the linear model considered to be zero? Why or why not?<br>
**ANS :** Slope of the line cannot be considered zero, as seen in the statistics above, the p-value is 5.35e-11, lower than the 0.05% range, thus we are able to rejct the null hypothesis. 

**Q.** Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?<br>
**ANS :** As the r-value fo the data set is above 0.7, we can definitely use this linear model to predict the MPG of the MechaCar prototype. 

## Summary Statistics on Suspension Coils
Total Summary:
<img width="372" alt="image" src="https://user-images.githubusercontent.com/104419959/206877942-3d5170ef-e86e-431a-a945-2f730a59270f.png">

Lot Summary:
<img width="545" alt="image" src="https://user-images.githubusercontent.com/104419959/206877948-73194c57-2f5b-4409-a2a6-b0bb969d20de.png">

- The design specification indicates tht the variance fo the suspension coils must not exceed 100 pounds per square inch. Observing from the data frame above, we can come to a conclusion that lot 3 exceeded the restriction, while lot 1 and lot 2 are within acceptable range. 
