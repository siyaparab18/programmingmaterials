install.packages("ctv")
remotes::install_github("JustinMShea/wooldridge")
ctv::update.views("Econometrics")
library(wooldridge)

data("wage1")
summary(wage1)
wageModel2 <- lm(lwage ~ educ + exper + +expersq + tenure + tenursq, data = wage1)

summary(wageModel2)