load("reg.Rdata")
#save summary as latex table
library(stargazer)
stargazer(reg, type = "latex", out = "reg.tex")
