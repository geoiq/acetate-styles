Map
{
    map-bgcolor: #b1b8b8;
}

/*
"shore" is a general class for layers with continents, coastlines,
lakes, and other kinds of meeting points between water and land.
*/
.shore[zoom<9]
{
    line-color: #b2b6b9;
    line-cap: round;
    line-join: round;
}

#land-shapes-110m[zoom<2],
#country-shapes-110m[zoom>=2][zoom<3],
#country-shapes-50m[zoom>=3][zoom<6],
#country-shapes-10m[zoom>=6][zoom<8],
#processed-coast-outline[zoom>=8][zoom<9],
#processed-coast-inline[zoom>=8][zoom<9]
{
    line-width: 0.75;
    polygon-fill: #e4e3db;
}

/*
Adjust the inner and outer line-widths and fatten up the inner shap
with some land color to account for tiled data in the coastline tab
*/
#processed-coast-outline[zoom>=8][zoom<9] { line-width: 2.5; }
#processed-coast-inline[zoom>=8][zoom<9] { line-width: 0.5; line-color: #e4e3db; }

#admin1-lines-50m[zoom>=3][zoom<6]
{
    line-width: 0.35;
    line-color: #aaadb0;
}

#admin1-lines-10m[zoom>=6][zoom<=8]
{
    line-width: 0.6;
    line-color: #aaadb0;
}

#lakes-110m[zoom<3],
#lakes-50m[zoom>=3][zoom<6][scalerank<3],
#lakes-50m[zoom>=6][zoom<6],
#lakes-10m[zoom>=6][zoom<8]
{
    line-width: 1;
    polygon-fill: #a9b1b0;
}

/*
Continent labels are just points.
*/
#continent-labels[zoom>=1][zoom<3] name
{
    text-face-name: 'Arial Regular';
    text-wrap-width: 32;
    text-size: 12;
    text-fill: #555;
}


/*
Ocean, Sea, Bay and other marine labels. Some use of scalerank column
here helps define exactly which features come in at which zoom levels.
*/
#marine-labels-110m[zoom=2][scalerank=0] name,
#marine-labels-110m[zoom=3] name,
#marine-labels-50m[zoom=4][scalerank<4] name,
#marine-labels-50m[zoom>=5][zoom<6] name,
#marine-labels-10m[zoom>=6] name
{
    text-face-name: 'Arial Italic';
    text-wrap-width: 80;
    text-size: 12;
    text-fill: #687876;
}

/*
Todo: draw names of small countries at higher zoom levels?
*/
#country-labels-110m[zoom=3][longfrom<=3] name,
#country-labels-110m[zoom=3][longfrom>3] shortname
{
    text-face-name: 'Arial Regular';
    text-wrap-width: 80;
    text-size: 12;
    text-fill: #555;
}

#country-labels-110m[zoom=4][longfrom<=4] name,
#country-labels-110m[zoom=4][longfrom>4] shortname
{
    text-face-name: 'Arial Bold';
    text-wrap-width: 80;
    text-size: 12;
    text-fill: #999;
    text-halo-radius: 1;
    text-halo-fill: #e4e3db;
}

#country-labels-110m[zoom=5][longfrom<=5] name,
#country-labels-110m[zoom=5][longfrom>5] shortname
{
    text-face-name: 'Arial Bold';
    text-wrap-width: 80;
    text-size: 15;
    text-fill: #999;
    text-halo-radius: 1;
    text-halo-fill: #e4e3db;
}

#country-labels-110m[zoom>=6][zoom<7][longfrom<=6] name,
#country-labels-110m[zoom>=6][zoom<7][longfrom>6] shortname
{
    text-face-name: 'Arial Bold';
    text-wrap-width: 80;
    text-size: 18;
    text-fill: #b4b4b4;
    text-halo-radius: 1;
    text-halo-fill: #e4e3db;
}



#admin1-labels-50m[zoom>=4][zoom<6] abbr,
#admin1-labels-50m[zoom>=6][zoom<8] name
{
    text-face-name: 'Arial Regular';
    text-wrap-width: 80;
    text-fill: #b4b4b4;
}

#admin1-labels-50m[zoom=4]{ text-size: 10; }
#admin1-labels-50m[zoom=5]{ text-size: 12; }
#admin1-labels-50m[zoom=6]{ text-size: 13; }
#admin1-labels-50m[zoom=7]{ text-size: 13; }
#admin1-labels-50m[zoom=8]{ text-size: 18; }

#city-points-z4[zoom=4],
#city-points-z5[zoom=5],
#city-points-z6[zoom=6],
#city-points-z7[zoom=7],
#city-points-z8[zoom=8]
{
    point-file: url('gray-point.png');
}

#city-points-z6[name="Washington"][zoom=6]
{
    point-file: url('star.png');
}

#city-points-z6[name="Berlin"][zoom=6]
{
    point-file: url('star.png');
}

#city-points-z6[name="Prague"][zoom=6]
{
    point-file: url('star.png');
}

#city-points-z6[name="Warsaw"][zoom=6]
{
    point-file: url('star.png');
}

#city-points-z6[name="Brussels"][zoom=6]
{
    point-file: url('star.png');
}

#city-points-z6[name="Paris"][zoom=6]
{
    point-file: url('star.png');
}



#city-labels-z4[zoom=4] name,
#city-labels-z5[zoom=5] name,
#city-labels-z6[zoom=6] name,
#city-labels-z7[zoom=7] name,
#city-labels-z8[zoom=8] name
{
    text-allow-overlap: true;
    text-face-name: 'Arial Regular';
    text-fill: #555;
}

/*
City Labels ZOOM 4
*/
.city-labels[zoom=4] name { text-size: 10; }
.city-labels[zoom=4][population>=25000] name { text-size: 10; }
.city-labels[zoom=4][population>=100000] name { text-size: 12; }
.city-labels[zoom=4][population>=1000000] name { text-size: 12; }

/*
City Labels ZOOM 5
*/
.city-labels[zoom=5] name { text-size: 10; }
.city-labels[zoom=5][population>=25000] name { text-size: 10; }
.city-labels[zoom=5][population>=100000] name { text-size: 10; }
.city-labels[zoom=5][population>=1000000] name { text-size: 15; }

/*
City Labels ZOOM 6
*/
.city-labels[zoom=6] name { text-size: 10; }
.city-labels[zoom=6][population>=25000] name { text-size: 10; }
.city-labels[zoom=6][population>=100000] name { text-size: 13; }
.city-labels[zoom=6][population>=1000000] name { text-size: 18; }

/*
City Labels ZOOM 7
*/
.city-labels[zoom=7] name { text-size: 10; }
.city-labels[zoom=7][population>=25000] name { text-size: 10; }
.city-labels[zoom=7][population>=100000] name { text-size: 13; }
.city-labels[zoom=7][population>=1000000] name { text-size: 18; }

/*
City Labels ZOOM 8
*/
.city-labels[zoom=8] name { text-size: 10; }
.city-labels[zoom=8][population>=25000] name { text-size: 13; }
.city-labels[zoom=8][population>=100000] name { text-size: 18; }
.city-labels[zoom=8][population>=1000000] name { text-size: 18; }
