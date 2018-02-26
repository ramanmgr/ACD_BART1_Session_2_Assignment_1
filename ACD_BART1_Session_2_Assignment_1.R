#1.	What are the different methods to call a function in R? 

##call(name, ...)			# returns an unevaluated function call
cl <- call("round", 22.3)
is.call(cl)         #[1] TRUE
eval(cl)            #[1] 22


##do.call 				#  for calling a function by name and argument list
a<-list((2.5:9),6.8)
a
cl1 <- do.call("round",a)
is.call(cl1) # TRUE
cl1
eval(cl1)


##Recall 				# for recursive calling of functions
# A recursive function is a function that calls itself

# Recursive function to find factorial
recursive.factorial <- function(x) {
  if (x == 0)    return (1)
  else           return (x * recursive.factorial(x-1))
}

recursive.factorial(5)






#2.	The lazy evaluation of a function means, 
#the argument is evaluated only if it is evaluated only if it is used inside the body of the function. 
#Say True or False. 

##TRUE.  
#By default, R function arguments are lazy, they're only evaluated if they're actually used.




#3.	State True or False: 

#a.	Insights driven from descriptive analytics is not meaningful. 

##FALSE

#b.	The number of values in each Elements of a list, should be equal. 

##FALSE

#c.	The datasets are not stored in memory of the computer using R. 

##FALSE

#d.	Data frames and matrices are two dimensional however the array is multidimensional. 

##TRUE
