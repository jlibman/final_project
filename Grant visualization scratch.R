library(dplyr)
library(plotly)
library(ggplot2)
setwd("c:/Users/Grant/Documents/INFO-498/final_project")
WhiteAlone <- read.csv("498_data/Tab01-WhiteAlone.csv")
View(WhiteAlone)
BlackAlone <- read.csv("498_data/Tab01-BlackAlone.csv")
View(BlackAlone)
AsianAlone <- read.csv("498_data/Tab01-AsianAlone.csv")
View(AsianAlone)
AllRaces <- read.csv("498_data/Tab01-AllRaces.csv")
PTEset <- BlackAlone %>% group_by(Gender) %>% select(Ages, PercentTotalEnrolled) 
plot_ly(PTEset, x = Ages, y = PercentTotalEnrolled, mode = 'markers', color = Gender)


WhiteOrInComboNonHis <- read.csv("data/Tab01-WhiteAloneOrInCombinationNonHispanic.csv")
WhiteOrInCombo <- read.csv("data/Tab01-WhiteAloneOrInCombination.csv")
WhiteNonHispanic <- read.csv("data/Tab01-WhiteAloneNonHispanic.csv")
Hispanic <- read.csv("data/Tab01-Hispanic.csv")
ForeignBorn <- read.csv("data/Tab01-ForeignBorn.csv")
ChildForeign <- read.csv("data/Tab01-ChildrenOfForeignBorn.csv")
BlackAloneOrInCombo <- read.csv("data/Tab01-BlackAloneOrInCombination.csv")
AsianAloneOrInCombo <- read.csv("data/Tab01-AsianAloneOrInCombination.csv")

#percent not enrolled
PTNEsetB <- BlackAlone %>% group_by(Gender) %>% select(Ages, PercentTotalNotEnrolled) 
PTNEsetW <- WhiteAlone %>% group_by(Gender) %>% select(Ages, PercentTotalNotEnrolled)
joined <- bind_cols(PTNEsetB, PTNEsetW)
View(joined)

p <- plot_ly(joined, x = Ages, y = PercentTotalNotEnrolled, name = "Black Alone", line = list(shape = "linear"), color = Gender)
p
p <- add_trace(p, y = PercentTotalNotEnrolled, name = "White Alone")





#percent in college
PCollegeset <- BlackAlone %>% group_by(Gender) %>% select(Ages, PercentCollege) 
plot_ly(PCollegeset, x = Ages, y = PercentCollege, mode = 'markers', color = Gender)



#percent total enrolled
#percent total not enrolled
#number go to college
#percent go to college
#

#function that takes one dataset and graphs it
#function that combines two datasets
#function that combines a number of datasets (vector of dataframes)?


#renaming the Gender to Gender and their respective demographic