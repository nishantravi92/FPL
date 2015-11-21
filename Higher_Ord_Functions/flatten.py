def flatten(deplist):
	for x in deplist:
		if isinstance(x,list):
			for y in flatten(x):
				yield y
		else:
			yield x

l=[[[1],[2]],[[3]],[[4,5],[6]]]
k=[x for x in flatten(l)]
print k
		

