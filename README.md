# Hypothesis-testing-in-R
**Sexual Dimorphism in Greater White Toothed Shrews**

Dataset contains data on greater white toothed shrews caught in swiss alps
objectives: i) test whether the greater white toothed shrew shows sexual dimorphism in body weight.
            ii) test whether juvenile shrews differ from adult shrews in their pattern of sexual
                 dimorphism in terms of body weight.
                 
Data was pre-processed in excel to remove invalid values and homogenize the data
General linear modelling approach was used.
The validation of the models to test homogeneity of variance and normality was carried out using residual vs fitted values plots.
Boxcox transformation with appropriate values of lambda was used to satisfy homogeneity of variance and normality where required. 

![image](https://user-images.githubusercontent.com/106402907/233994187-5fd823c3-0210-4745-91e4-6fe85153083e.png) ![image](https://user-images.githubusercontent.com/106402907/233994793-e31913c0-521f-4091-adbc-687336d62c42.png)

Residuals vs Fitted plot and quantile-quantile plot of the linear model m_juv : Weight = µsex + Normal (0,σ) for juvenile shrews

![image](https://user-images.githubusercontent.com/106402907/233995403-ee70f171-bb26-45bc-af75-0027e4ad6d67.png)

Figure 3. Mean weight of juvenile male and female shrews. Error bars show 95% confidence level.

