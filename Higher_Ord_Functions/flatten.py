"""Answer to part a
	Flatten takes in an argument and in SML, we will pass a list or a list of list or a list of list of lists or .... 
	But Because of type checking we need to know the depth of the list beforehand. 
	Meanwhile Python is a dynamically typed language.
"""



def flatten(deplist):
	for x in deplist:
		if isinstance(x,list):
			for y in flatten(x):
				yield y
		else:
			yield x

#l=[[[1],[2]],[[3]],[[4,5],[6]]]
#print [x for x in flatten(l)]
		

