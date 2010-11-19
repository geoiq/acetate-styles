acetate.html: acetate-1.png acetate-2.png acetate-3.png acetate-4.png acetate-5.png acetate-6.png acetate-7.png acetate-8.png acetate-9.png acetate-10.png acetate-11.png acetate-12.png acetate-13.png acetate-14.png acetate-15.png acetate-16.png acetate-17.png

acetate-1.png: style-combined.xml
	python ../../design/render/mapnik-render.py -f fonts -s style-combined.xml -l 37.7693 -122.4184 -z 1 -d 1024 768 -o acetate-1.png

acetate-2.png: style-combined.xml
	python ../../design/render/mapnik-render.py -f fonts -s style-combined.xml -l 37.7693 -122.4184 -z 2 -d 1024 768 -o acetate-2.png

acetate-3.png: style-combined.xml
	python ../../design/render/mapnik-render.py -f fonts -s style-combined.xml -l 37.7693 -122.4184 -z 3 -d 1024 768 -o acetate-3.png

acetate-4.png: style-combined.xml
	python ../../design/render/mapnik-render.py -f fonts -s style-combined.xml -l 37.7693 -122.4184 -z 4 -d 1024 768 -o acetate-4.png

acetate-5.png: style-combined.xml
	python ../../design/render/mapnik-render.py -f fonts -s style-combined.xml -l 37.7693 -122.4184 -z 5 -d 1024 768 -o acetate-5.png

acetate-6.png: style-combined.xml
	python ../../design/render/mapnik-render.py -f fonts -s style-combined.xml -l 37.7693 -122.4184 -z 6 -d 1024 768 -o acetate-6.png

acetate-7.png: style-combined.xml
	python ../../design/render/mapnik-render.py -f fonts -s style-combined.xml -l 37.7693 -122.4184 -z 7 -d 1024 768 -o acetate-7.png

acetate-8.png: style-combined.xml
	python ../../design/render/mapnik-render.py -f fonts -s style-combined.xml -l 37.7693 -122.4184 -z 8 -d 1024 768 -o acetate-8.png

acetate-9.png: style-combined.xml
	python ../../design/render/mapnik-render.py -f fonts -s style-combined.xml -l 37.7693 -122.4184 -z 9 -d 1024 768 -o acetate-9.png

acetate-10.png: style-combined.xml
	python ../../design/render/mapnik-render.py -f fonts -s style-combined.xml -l 37.7693 -122.4184 -z 10 -d 1024 768 -o acetate-10.png

acetate-11.png: style-combined.xml
	python ../../design/render/mapnik-render.py -f fonts -s style-combined.xml -l 37.7693 -122.4184 -z 11 -d 1024 768 -o acetate-11.png

acetate-12.png: style-combined.xml
	python ../../design/render/mapnik-render.py -f fonts -s style-combined.xml -l 37.7693 -122.4184 -z 12 -d 1024 768 -o acetate-12.png

acetate-13.png: style-combined.xml
	python ../../design/render/mapnik-render.py -f fonts -s style-combined.xml -l 37.7693 -122.4184 -z 13 -d 1024 768 -o acetate-13.png

acetate-14.png: style-combined.xml
	python ../../design/render/mapnik-render.py -f fonts -s style-combined.xml -l 37.7693 -122.4184 -z 14 -d 1024 768 -o acetate-14.png

acetate-15.png: style-combined.xml
	python ../../design/render/mapnik-render.py -f fonts -s style-combined.xml -l 37.7693 -122.4184 -z 15 -d 1024 768 -o acetate-15.png

acetate-16.png: style-combined.xml
	python ../../design/render/mapnik-render.py -f fonts -s style-combined.xml -l 37.7693 -122.4184 -z 16 -d 1024 768 -o acetate-16.png

acetate-17.png: style-combined.xml
	python ../../design/render/mapnik-render.py -f fonts -s style-combined.xml -l 37.7693 -122.4184 -z 17 -d 1024 768 -o acetate-17.png

style-combined.xml: style-combined.mml world-naturalearth-lowzooms.mss world-osm-midzooms.mss city-area-colors.mss city-line-colors.mss city-line-widths.mss city-road-labels.mss
	cascadenik-compile.py style-combined.mml > style-combined.xml

clean:
	rm -f acetate-*.png
	rm -f style-combined.xml

