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
#place-labels-z3[place=country][zoom=3] name
{
    text-face-name: 'Arial Regular';
    /*text-wrap-width: 80;*/
    text-size: 12;
    text-fill: #555;
}

#place-labels-z4[place=country][zoom=4] name
{
    text-face-name: 'Arial Bold';
    /*text-wrap-width: 80;*/
    text-size: 12;
    text-fill: #999;
    text-halo-radius: 1;
    text-halo-fill: #e4e3db;
}

#place-labels-z5[place=country][zoom=5] name
{
    text-face-name: 'Arial Bold';
    /*text-wrap-width: 80;*/
    text-size: 15;
    text-fill: #999;
    text-halo-radius: 1;
    text-halo-fill: #e4e3db;
}

#place-labels-z6[place=country][zoom=6] name,
#place-labels-z7[place=country][zoom=7] name,
#place-labels-z8[place=country][zoom=8] name,
#place-labels-z9[place=country][zoom=9] name,
#place-labels-z10[place=country][zoom=10] name,
#place-labels-z11plus[place=country][zoom>=11][zoom<16] name
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

#place-points-z4[place=city][zoom=4],
#place-points-z5[place=city][zoom=5],
#place-points-z6[place=city][zoom=6],
#place-points-z7[place=city][zoom=7],
#place-points-z8[place=city][zoom=8]
{
    point-file: url('gray-point.png');
}

#place-points-z4[place=city][capital=yes][zoom=4],
#place-points-z5[place=city][capital=yes][zoom=5],
#place-points-z6[place=city][capital=yes][zoom=6],
#place-points-z7[place=city][capital=yes][zoom=7],
#place-points-z8[place=city][capital=yes][zoom=8]
{
    point-file: url('star.png');
}



#place-labels-z4[place=city][zoom=4] name,
#place-labels-z5[place=city][zoom=5] name,
#place-labels-z6[place=city][zoom=6] name,
#place-labels-z7[place=city][zoom=7] name,
#place-labels-z8[place=city][zoom=8] name,
#place-labels-z9[place=city][zoom=9] name,
#place-labels-z10[place=city][zoom=10] name,
#place-labels-z11plus[place=city][zoom>=11][zoom<16] name
{
    /*text-allow-overlap: true;*/
    text-face-name: 'Arial Regular';
    text-fill: #555;
}

/*
City Labels ZOOM 4
*/
.place-labels[place=city][zoom=4] name { text-size: 10; }
.place-labels[place=city][zoom=4][population>=50000] name { text-size: 10; }
.place-labels[place=city][zoom=4][population>=250000] name { text-size: 12; }
.place-labels[place=city][zoom=4][population>=2500000] name { text-size: 12; }

/*
City Labels ZOOM 5
*/
.place-labels[place=city][zoom=5] name { text-size: 10; }
.place-labels[place=city][zoom=5][population>=50000] name { text-size: 10; }
.place-labels[place=city][zoom=5][population>=250000] name { text-size: 10; }
.place-labels[place=city][zoom=5][population>=2500000] name { text-size: 15; }

/*
City Labels ZOOM 6
*/
.place-labels[place=city][zoom=6] name { text-size: 10; }
.place-labels[place=city][zoom=6][population>=50000] name { text-size: 10; }
.place-labels[place=city][zoom=6][population>=250000] name { text-size: 13; }
.place-labels[place=city][zoom=6][population>=2500000] name { text-size: 18; }

/*
City Labels ZOOM 7
*/
.place-labels[place=city][zoom=7] name { text-size: 10; }
.place-labels[place=city][zoom=7][population>=50000] name { text-size: 10; }
.place-labels[place=city][zoom=7][population>=250000] name { text-size: 13; }
.place-labels[place=city][zoom=7][population>=2500000] name { text-size: 18; }

/*
City Labels ZOOM 8
*/
.place-labels[place=city][zoom=8] name { text-size: 10; }
.place-labels[place=city][zoom=8][population>=50000] name { text-size: 13; }
.place-labels[place=city][zoom=8][population>=250000] name { text-size: 18; }
.place-labels[place=city][zoom=8][population>=2500000] name { text-size: 18; }

/*
City Labels ZOOM 9
*/
.place-labels[place=city][zoom=9] name { text-size: 10; }
.place-labels[place=city][zoom=9][population>=50000] name { text-size: 13; }
.place-labels[place=city][zoom=9][population>=250000] name { text-size: 18; }
.place-labels[place=city][zoom=9][population>=2500000] name { text-size: 18; }

/*
City Labels ZOOM 10
*/
.place-labels[place=city][zoom=10] name { text-size: 10; }
.place-labels[place=city][zoom=10][population>=50000] name { text-size: 13; }
.place-labels[place=city][zoom=10][population>=250000] name { text-size: 18; }
.place-labels[place=city][zoom=10][population>=2500000] name { text-size: 18; }

/*
City Labels ZOOM 11+
*/
.place-labels[place=city][zoom>=11][zoom<16] name { text-size: 10; }
.place-labels[place=city][zoom>=11][zoom<16][population>=50000] name { text-size: 13; }
.place-labels[place=city][zoom>=11][zoom<16][population>=250000] name { text-size: 18; }
.place-labels[place=city][zoom>=11][zoom<16][population>=2500000] name { text-size: 18; }
