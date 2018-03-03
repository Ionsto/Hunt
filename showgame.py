import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation
gen = input("Generation")
colourmappings = {	0:(255,255,255),
					1:(0,0,0),
					2:(255,0,0),
					3:(0,255,0),
					4:(0,0,255)}
def GetData(gen):
	datafile = open("./Games/Gen"+gen+".txt")
	data = []
	for line in datafile:
		sublines = line.split(" ")
		if sublines[0] == "Frame":
			data.append([])
		else:
			data[-1].append(list(map(float,sublines)))
		#print(line)
	datafile.close()
	return data
def GenScatter(data):
	x = []
	y = []
	c = []
	for entity in data[0]:
		c.append(entity[3])
	framenumber = 0
	for frame in data:
		x.append([])
		y.append([])
		for entity in frame:
			x[framenumber].append(entity[0])
			y[framenumber].append(entity[1])
		framenumber +=1
	return x,y,c
	
def update_plot(i, x,y, scat):
	#scat.set_array(data[i])
	scat.set_offsets(np.c_[x[i],y[i]])
	return scat,
data = GetData(gen)
numframes = len(data)
x,y,c = GenScatter(data)

fig = plt.figure()
scat = plt.scatter(x[0], y[0], c=c, s=200)
plt.xlim(-20,20)
plt.ylim(-20,20)
ani = animation.FuncAnimation(fig, update_plot, frames=range(numframes),
							  fargs=(x,y, scat))
plt.show()
