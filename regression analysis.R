# Generate random IQ values with mean = 30 and sd =2
 IQ <- rnorm(40, 30, 2)

 # Sorting IQ level in ascending order
 IQ <- sort(IQ)

 # Generate vector with pass and fail values of 40 students
 result <- c(0, 0, 0, 1, 0, 0, 0, 0, 0, 1,
+ 1, 0, 0, 0, 1, 1, 0, 0, 1, 0,
+ 0, 0, 1, 0, 0, 1, 1, 0, 1, 1,
+ 1, 1, 1, 0, 1, 1, 1, 1, 0, 1)

 # Data Frame
 df <- as.data.frame(cbind(IQ, result))

 # Print data frame
print(df)
         IQ result
1  25.25977      0
2  26.20389      0
3  27.35999      0
4  27.41136      1
5  27.53198      0
6  27.57725      0
7  27.65354      0
8  28.19794      0
9  28.32630      0
10 28.41000      1
11 28.73624      1
12 28.83032      0
13 28.88632      0
14 28.89221      0
15 29.21788      1
16 29.22297      1
17 29.43626      0
18 29.49877      0
19 29.69506      1
20 29.73148      0
21 29.94458      0
22 30.19106      0
23 30.31277      1
24 30.34211      0
25 30.91084      0
26 31.60914      1
27 31.69094      1
28 31.73431      0
29 31.75973      1
30 32.25978      1
31 32.29440      1
32 32.50531      1
33 32.52319      1
34 33.01747      0
35 33.57239      1
36 33.67246      1
37 33.75906      1
38 33.81289      1
39 34.15851      0
40 34.24750      1

 # output to be present as PNG file
 png(file="LogisticRegressionGFG.png")

 # Plotting IQ on x-axis and result on y-axis
 plot(IQ, result, xlab = "IQ Level",
+ ylab = "Probability of Passing")

 # Create a logistic model
 g = glm(result~IQ, family=binomial, df)

 # Create a curve based on prediction using the regression model
 curve(predict(g, data.frame(IQ=x), type="resp"), add=TRUE)

 # This Draws a set of points
 # Based on fit to the regression model
 points(IQ, fitted(g), pch=30)
There were 40 warnings (use warnings() to see them)

 # Summary of the regression model
 summary(g)

Call:
glm(formula = result ~ IQ, family = binomial, data = df)

Deviance Residuals: 
    Min       1Q   Median       3Q      Max  
-1.9586  -0.8940  -0.4393   0.8677   1.8409  

Coefficients:
            Estimate Std. Error z value Pr(>|z|)   
(Intercept) -14.6983     5.3795  -2.732  0.00629 **
IQ            0.4818     0.1771   2.720  0.00653 **
---
Signif. codes:  0 ‘*’ 0.001 ‘*’ 0.01 ‘’ 0.05 ‘.’ 0.1 ‘ ’ 1

(Dispersion parameter for binomial family taken to be 1)

    Null deviance: 55.352  on 39  degrees of freedom
Residual deviance: 45.782  on 38  degrees of freedom
AIC: 49.782

Number of Fisher Scoring iterations: 3


 # saving the file
 dev.off()
null device 
          