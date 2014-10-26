all: index.html img/12767852085_121a4e22f3_o.jpg img/4913713833_8367526e19_o.jpg img/6958401123_e6799bb220_o.jpg img/7803448008_bca53e9760_o.jpg img/7803511582_1c47f1c611_o.jpg 

%.html: %.jade 
	jade -P $<

img/%.jpg: photos/%.jpg Makefile
	convert $< -strip -interlace Plane -gaussian-blur 0.05 -quality 85% -resize x1080 $@
