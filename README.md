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

## T-Tests on Suspension Coils
- T test based on mu level of 1500:
- 
<img width="423" alt="image" src="https://user-images.githubusercontent.com/104419959/206883639-0c1523eb-400e-4802-8606-f03a56974cd0.png">

-T.test result

<img width="423" alt="image" src="https://user-images.githubusercontent.com/104419959/206883560-112dd1a3-4833-4fc6-a2cb-8c477495a70e.png">

- From observation of the T-test, we can conclude that as we progress through the different lot number, there are a siginificant decrease in the p-value, with lot 3 being lower than our significance level. 

## Study Design: MechaCar vs Competition
**Q.** What metric or metrics are you going to test?<br>
**Ans:** As we further develope more advance technologies, the needs of our audience will increase over time. For consumers, they would care most about getting the most out of the amount they spend on a car. Few considerations and metrics that I would recommand and test is the city and highway fuel efficiency and maintenance cost. As fuel price begins to skyrocket, a fuel efficient vehicle would best attract more consumer. <br>
**Q.** What is the null hypothesis or alternative hypothesis?<br>
**Ans:** The null hypothesis would be a vehicle with fuel consumption not higher than other competition, will significantly attract more consumers. <br>
**Q.** What statistical test would you use to test the hypothesis? And why?<br>
**Ans:** Some statistical test I would use to test my hypothesis is using Analysis of Variance to visualize the connection between fuel consumption and consumer group. <br>
**Q.** What data is needed to run the statistical test?<br>
**Ans:** There are a lot of data required to achieve this result. From the vehicle's perspective, we will require the:<br>
    1. Hourse power for each motor vehicle as it could affect the fuel usage of a car<br>
    2. Weight of the vehicle<br>
     3. Aerodynamics of the vehicle<br>
    4. Recorded fuel consumption of the vehicel. <br>
For Drivers, we will have to obtain data such as:<br>
    1. Number of user for different car selection<br>
    2. Habits when driving that might affect fuel consumption. 
