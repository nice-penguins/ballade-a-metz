all: index.html img/cathedrale.jpg img/moselle.jpg img/porte-des-allemands.jpg img/temple.jpg img/plan-d-eau.jpg

%.html: %.jade 
	jade -P $<

img/%.jpg: photos/%.jpg Makefile
	convert $< -strip -interlace Plane -gaussian-blur 0.05 -quality 85% -resize x1080 $@
