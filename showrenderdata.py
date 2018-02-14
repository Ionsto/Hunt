from PIL import Image, ImageDraw, ImageFont

datafile = open("renderdata.txt")
data = []
colourmappings = {	0:(255,255,255),
					1:(0,0,0),
					2:(255,0,0),
					3:(0,255,0),
					4:(0,0,255)}
for line in datafile:
	data.append(list(map(float,line.split(" "))))
	print(line)
datafile.close()
ImageSize = (1920/4,1080/4)
maxdistance=10
def GetColourFromRay(ray):
	raycolour = int(ray[1])
	raydistance = ray[0]
	rawcolour = colourmappings[raycolour]
	blendfactor = raydistance/maxdistance
	return tuple([int((x*(1-blendfactor)) + (y*blendfactor)) for x,y in zip(rawcolour,colourmappings[0])])
# make a blank image for the text, initialized to transparent text color
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
rendered.show()
