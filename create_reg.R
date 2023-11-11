#load cars dataset
data(cars)

#regress speed on distance
reg <- lm(speed ~ dist, data = cars)
summary(reg)

save(reg, file = "reg.Rdata")
