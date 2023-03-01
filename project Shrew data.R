###################################################################################################
# Name: Himanshu Gupta
# student no. : 18203712
# Dataset contains data on greater white toothed shrews caught in swiss alps
# objectives: i) test whether the greater white toothed shrew shows sexual dimorphism in body weight.
#            ii) test whether juvenile shrews differ from adult shrews in their pattern of sexual
#                 dimorphism in terms of body weight.
# date: 17/06/19

rm(list = ls())      # Standard code to clear R's memory	
#load the required packages
library(emmeans)
library(MASS)

# creating the subset of males and females, removing the other values
Shrew_cleaned = read.table('Shrew_cleaned.CSV', header=T, sep=',')
shrew = droplevels(subset(Shrew_cleaned, Sex != 'X'))
shrew$Sex = as.factor(shrew$Sex)

#hypothesis, H1: There is a difference between average weight of the male and female shrews

m = lm(Weight~1+Sex, data = shrew)
plot(m)

boxcox(m)     # Find the best lambda of a Box-Cox transformation

shrew$po_wt = ((shrew$Weight^0.68)-1)/0.68
m1 = lm(po_wt~1+Sex, data = shrew)
#checking validity
plot(m1)
summary(m1)
# Reporting the results graphically
# interpreting the results

m1_eff = emmeans(m1, spec = 'Sex')
summary(m1_eff)   # power transformed means and SEs for Females and males
plot(m1_eff)
#back transforming the power transfomed wieght response to original response
m1_eff2 = update(m1_eff, tran=make.tran('boxcox',p=0.68))
summary(m1_eff2, type = 'response')
plot(m1_eff2,type = 'response', xlab = "weight in grams", intervals = T)

#####################################################################################
#Analysis for adult shrews
#H2: the average weight of adult male shrews is different than average weight
# of adult female shrews
#creating subset with only adult shrews
shrew_adults = droplevels(subset(shrew, Class =="ad"))
shrew_adults$Sex = as.factor(shrew_adults$Sex)
# fitting linear model to the data
m_ad = lm(Weight~1+Sex, data = shrew_adults)
#Checking validity
plot(m_ad)
boxcox(m_ad)
# the boxcox transform gives a value close to -1 for the lambda
shrew_adults$po_wt = -((1/shrew_adults$Weight)-1)
# fitting linear model to the power transformed data
m1_ad = lm(po_wt~1+Sex, data = shrew_adults)
summary(m1_ad)
#checking validity
plot(m1_ad)

m1_ad_eff = emmeans(m1_ad, spec = 'Sex')
summary(m1_ad_eff)
# back transforming the results
m1_ad_eff2 = update(m1_ad_eff, tran = make.tran('boxcox',p = -1))
summary(m1_ad_eff2, type = 'response')
# visualizing the results
plot(m1_ad_eff2, type = 'response', xlab = "weight in grams", intervals = T)

###########################################################################################
#Analysis for juvenile shrews
# the average weight of male juvenile shrews is different than average weight
# of female juvenile shrews

#creating subset of only juvenile shrews
shrew_juv = droplevels(subset(shrew, Class == "j"))
shrew_juv$Sex = as.factor(shrew_juv$Sex)
#fitting linear model
m_juv = lm(Weight~1+Sex, data = shrew_juv)
summary(m_juv)
plot(m_juv)
boxcox(m_juv)
m_juv_eff = emmeans(m_juv, spec = 'Sex')
plot(m_juv_eff, xlab = "weight in grams")
summary(m_juv_eff)

