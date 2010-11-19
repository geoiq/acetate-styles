acetate.html: acetate-1.png acetate-2.png acetate-3.png acetate-4.png acetate-5.png acetate-6.png acetate-7.png acetate-8.png acetate-9.png acetate-10.png acetate-11.png acetate-12.png acetate-13.png acetate-14.png acetate-15.png acetate-16.png acetate-17.png

acetate-1.png: style-combined.xml
	python ../../design/render/mapnik-render.py fonts style-combined.xml 37.7693 -122.4184 1 1024 768 acetate-1.png

acetate-2.png: style-combined.xml
	python ../../design/render/mapnik-render.py fonts style-combined.xml 37.7693 -122.4184 2 1024 768 acetate-2.png

acetate-3.png: style-combined.xml
	python ../../design/render/mapnik-render.py fonts style-combined.xml 37.7693 -122.4184 3 1024 768 acetate-3.png

acetate-4.png: style-combined.xml
	python ../../design/render/mapnik-render.py fonts style-combined.xml 37.7693 -122.4184 4 1024 768 acetate-4.png

acetate-5.png: style-combined.xml
	python ../../design/render/mapnik-render.py fonts style-combined.xml 37.7693 -122.4184 5 1024 768 acetate-5.png

acetate-6.png: style-combined.xml
	python ../../design/render/mapnik-render.py fonts style-combined.xml 37.7693 -122.4184 6 1024 768 acetate-6.png

acetate-7.png: style-combined.xml
	python ../../design/render/mapnik-render.py fonts style-combined.xml 37.7693 -122.4184 7 1024 768 acetate-7.png

acetate-8.png: style-combined.xml
	python ../../design/render/mapnik-render.py fonts style-combined.xml 37.7693 -122.4184 8 1024 768 acetate-8.png

acetate-9.png: style-combined.xml
	python ../../design/render/mapnik-render.py fonts style-combined.xml 37.7693 -122.4184 9 1024 768 acetate-9.png

acetate-10.png: style-combined.xml
	python ../../design/render/mapnik-render.py fonts style-combined.xml 37.7693 -122.4184 10 1024 768 acetate-10.png

acetate-11.png: style-combined.xml
	python ../../design/render/mapnik-render.py fonts style-combined.xml 37.7693 -122.4184 11 1024 768 acetate-11.png

acetate-12.png: style-combined.xml
	python ../../design/render/mapnik-render.py fonts style-combined.xml 37.7693 -122.4184 12 1024 768 acetate-12.png

acetate-13.png: style-combined.xml
	python ../../design/render/mapnik-render.py fonts style-combined.xml 37.7693 -122.4184 13 1024 768 acetate-13.png

acetate-14.png: style-combined.xml
	python ../../design/render/mapnik-render.py fonts style-combined.xml 37.7693 -122.4184 14 1024 768 acetate-14.png

acetate-15.png: style-combined.xml
	python ../../design/render/mapnik-render.py fonts style-combined.xml 37.7693 -122.4184 15 1024 768 acetate-15.png

acetate-16.png: style-combined.xml
	python ../../design/render/mapnik-render.py fonts style-combined.xml 37.7693 -122.4184 16 1024 768 acetate-16.png

acetate-17.png: style-combined.xml
	python ../../design/render/mapnik-render.py fonts style-combined.xml 37.7693 -122.4184 17 1024 768 acetate-17.png

#style-combined.xml: style.mml
#	cascadenik-compile.py style.mml > style-combined.xml

clean:
	rm -f acetate-*.png
#	rm -f style-combined.xml

