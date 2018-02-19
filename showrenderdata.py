from PIL import Image, ImageDraw, ImageFont
import os
colourmappings = {	0:(255,255,255),
					1:(0,0,0),
					2:(255,0,0),
					3:(0,255,0),
					4:(0,0,255)}
def GetData(name="renderdata.txt"):
	datafile = open(name)
	data = []
	for line in datafile:
		data.append(list(map(float,line.split(" "))))
		#print(line)
	datafile.close()
	return data
ImageSize = (int(1920/2),int(1080/2))
maxdistance=20
def GetColourFromRay(ray):
	raycolour = int(ray[1])
	raydistance = ray[0]
	rawcolour = colourmappings[raycolour]
	blendfactor = raydistance/maxdistance
	return tuple([int((x*(1-blendfactor)) + (y*blendfactor)) for x,y in zip(rawcolour,colourmappings[0])])
# make a blank image for the text, initialized to transparent text color
filelist = os.listdir("./Render/")
for filename in filelist:
	data = GetData("./Render/{}".format(filename))
	rendered = Image.new('RGBA', ImageSize, (255,255,255,255))
	d = ImageDraw.Draw(rendered)
	scanx = 0
	deltascan = ImageSize[0]/float(len(data)+1)
	maxheight = ImageSize[1]/2.0
	for ray in data:
		height = maxheight * (ray[0]-maxdistance)/maxdistance
		if ray != [maxdistance,0]:
			d.rectangle([(scanx,maxheight - height),(scanx+deltascan,maxheight + height)],fill=GetColourFromRay(ray))
		scanx += deltascan
	#rendered.show()
	rendered.save("./RenderImage/{}.png".format(filename))
