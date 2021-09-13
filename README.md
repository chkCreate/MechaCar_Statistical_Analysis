# Statistics_R
## Background
AutosRU's newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team's progress. The production data was reviewed to discover insights in manufacturing lines. 
  
The following steps were done for this exercise.
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes\
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots\
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population\
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers\.
   
## Linear Regression to Predict MPG
See the screenshot of the multiple linear regression model output using R to analyze the correlation of the six variables in the 'MechaCar_mpg.csv': vehicle_length, vehicle weight, spoiler_angle, ground_clearance, AWD, and mpg\.
  
<p align="center">
  <img width="900" height="550" src= "https://github.com/chkCreate/MechaCar_Statistical_Analysis/blob/692c05191544f61a666ad6082e5f0e02d12d5e6c/Part1_Summary.PNG" >
</p>
  
1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset\?
Pr(>|t|) values represent the probability that coefficients contribute random amounts of variance to the linear model\. According to the summary, vehicle length, ground clearance, and the intercept are statistically unlikely to provide random amounts of variance to the linear model, and therefore have significant impacts on the mpg values\.
  
2. Is the slope of the linear model considered to be zero? Why or why not\? Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not\?
This multiple linear regression model predicts mpg of MechaCar prototypes effectively because the r-squared values is 0.71 and the p-value of 5.35e-11 is significant\. The r-squared calue represents how well the regression model approximates real-world data points; and the closer the value is to 1, there is a higher likelihood that the future data points would fit the linear model\. Also, the p-value is much smaller than the assumed significance level of 0.05 percent; and therefore, the null hypothesis of zero slope can be rejected\. 
  
## Summary Statistics on Suspension Coils
The MechaCar 'Suspension_Coil.csv' dataset contains the results from multiple production lots\. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots\. Using my knowledge of R, I created a summary statistics table to show\: 
* The suspension coil’s PSI continuous variable across all manufacturing lots\
* The following PSI metrics for each lot: mean, median, variance, and standard deviation\.
  
See the two screenshots from my total_summary and lot_summary dataframes below\.
  
<p align="center", title="Total_Summary">
  <img width="600" height="160" src= "https://github.com/chkCreate/MechaCar_Statistical_Analysis/blob/692c05191544f61a666ad6082e5f0e02d12d5e6c/Part2_total_Summary.PNG" >
</p>
  
<p align="center", title="lot_summary Dataframe">
  <img width="600" height="200" src= "https://github.com/chkCreate/MechaCar_Statistical_Analysis/blob/692c05191544f61a666ad6082e5f0e02d12d5e6c/Part2_lot_summary.PNG" >
</p>
  
1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
According to the 'total_summary' table, the variance of all the suspension coils do not exceed 100 psi with the variane of approxiamtely 62 psi\. However, if you analyze the variance values across the three manufacturing lots as shown in the 'lot_summary' table, you can observe that lots #1 and #2 are way below the criteria and lot #3 exceeds at a variance of 170 psi\. Therefore, lots #1 and #2 are performing successfully and lot #3 needs to be examined closely in the future to improve the variance criteria of the production\. 
