#load table
dataMeaning=read.table('TheatrePopulation.txt', header=T, sep="\t")

#plot with the labels
plot(dataMeaning$theatres,dataMeaning$population,type="n",xlab="number of theatres",ylab="number of people")
text(dataMeaning$theatres,dataMeaning$population,dataMeaning$state, cex= 1)

#Now we'd like to build a regression model, i.e., find the equation for the straight line that best defines the dataset. 

myModel = lm(dataMeaning$theatres~dataMeaning$population)
summary(myModel)
#least square fitting
abline(myModel,col="red",lw="3")

#quick and dirty trick to avoid label overlap (best solution: export to
# vector format, like eps, and edit in separate software)
newMeanings = jitter(dataMeaning$theatres, 5)
plot(dataMeaning$theatres,newMeanings,type="n",xlab="number of theatres",ylab="number of people")
text(dataMeaning$theatres,newMeanings,dataMeaning$state, cex= 1)
