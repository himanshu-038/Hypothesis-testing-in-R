# Hypothesis-testing-in-R
**Sexual Dimorphism in Greater White Toothed Shrews**

Dataset contains sex (male or female), weight and class(juvenile or adult) data on greater white toothed shrews caught in swiss alps  
objectives:  
i) test whether the greater white toothed shrew shows sexual dimorphism in body weight.  
ii) test whether juvenile shrews differ from adult shrews in their pattern of sexual
                 dimorphism in terms of body weight.
                 
Data was pre-processed in excel to remove invalid values and homogenize the data
General linear modelling approach was used.
The validation of the models to test homogeneity of variance and normality was carried out using residual vs fitted values plots.
Boxcox transformation with appropriate values of lambda was used to satisfy homogeneity of variance and normality where required.

Some of the plots obtained for all shrews in this project are shown below. To see the plots specific to adult shrews and juvenile shrews please open the Project.docx file.

![image](https://user-images.githubusercontent.com/106402907/234002811-547cc44f-313c-4e57-83e6-41b0d3289327.png)

Fig 1. Mean weight in grams for male and female shrews. Error bars show 95% confidence level.

![image](https://user-images.githubusercontent.com/106402907/234002904-058bef22-370e-415a-a3fe-d8a63c6a56a6.png)
![image](https://user-images.githubusercontent.com/106402907/234002928-c262a38d-8994-4da6-8893-85169f76ec5f.png)

Fig 4. Resduals vs Fitted plot and quantile-quantile plot of  the linear model m1: po_wt = µsex + Normal (0,σ) for  all shrews where po_wt is boxcox transformed weight with λ = 0.68.

The p values obtained for the general linear models m1 (for all shrews), m_ad ( for adult shrews) and m_juv (for juvenile shrews) were 8.89e-15, 2.2e-16 and 0.02 respectively. These p values are well below the critical significance level of 0.05. Hence, the analyses provide strong evidence to prove that greater white toothed shrews show sexual dimorphism in weight and the pattern of sexual dimorphism differs between adults and juveniles. 



