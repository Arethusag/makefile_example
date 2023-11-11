#load cars
data(cars)

png("cars.png")

plot(cars$speed,
	cars$dist, 
	xlab = "Speed", 
	ylab = "Distance", 
	main = "Speed vs. Distance")

dev.off()

