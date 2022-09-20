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
1  25.49133      0
2  27.08544      0
3  27.76789      0
4  27.77690      1
5  28.58142      0
6  28.60978      0
7  28.64725      0
8  29.01584      0
9  29.06763      0
10 29.34412      1
11 29.35399      1
12 29.46836      0
13 29.55727      0
14 29.68526      0
15 29.69005      1
16 29.72425      1
17 29.73580      0
18 29.97670      0
19 30.22912      1
20 30.27253      0
21 30.35681      0
22 30.42536      0
23 30.52964      1
24 30.56289      0
25 30.59655      0
26 30.80154      1
27 30.93662      1
28 31.28609      0
29 31.28874      1
30 31.52394      1
31 31.59844      1
32 31.79133      1
33 31.82803      1
34 31.89210      0
35 31.97683      1
36 32.27679      1
37 32.52118      1
38 32.96605      1
39 33.74919      0
40 34.17825      1
 
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
-2.0439  -0.9748  -0.3951   0.9458   1.9156  

Coefficients:
            Estimate Std. Error z value Pr(>|z|)  
(Intercept) -18.4842     7.6677  -2.411   0.0159 *
IQ            0.6057     0.2521   2.403   0.0163 *
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

(Dispersion parameter for binomial family taken to be 1)

    Null deviance: 55.352  on 39  degrees of freedom
Residual deviance: 47.513  on 38  degrees of freedom
AIC: 51.513

Number of Fisher Scoring iterations: 4


 # saving the file
 dev.off()
null device 
          1 
> 
