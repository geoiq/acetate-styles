
#major-road-labels[zoom>=12] name
{
    text-face-name: 'Arial Regular';
    text-placement: line;
    text-max-char-angle-delta: 30;
    text-fill: #777;
    text-halo-radius: 1;
    text-halo-fill: #d9d9d3;
    text-spacing: 100;
}

#major-road-labels[zoom>=15] name
{
    text-halo-radius: 1;
    text-halo-fill: #fff;
}

#minor-road-labels[zoom>=16] name
{
    text-face-name: 'Arial Regular';
    text-placement: line;
    text-max-char-angle-delta: 30;
    text-fill: #777;
    text-halo-radius: 1;
    text-halo-fill: #fff;
    text-spacing: 100;
}


#major-road-labels[zoom=12] name { text-dy: 6; }
#major-road-labels[highway=trunk][zoom=12] name { text-size: 10; }
#major-road-labels[highway=primary][zoom=12] name { text-size: 10; }

#major-road-labels[zoom=13] name { text-dy: 6; }
#major-road-labels[highway=trunk][zoom=13] name { text-size: 10; }
#major-road-labels[highway=primary][zoom=13] name { text-size: 10; }

#major-road-labels[zoom=14] name { text-dy: 7; }
#major-road-labels[highway=trunk][zoom=14] name { text-size: 11; }
#major-road-labels[highway=primary][zoom=14] name { text-size: 11; }
#major-road-labels[highway=secondary][zoom=14] name { text-size: 10; }

#major-road-labels[highway=trunk][zoom=15] name { text-size: 12; }
#major-road-labels[highway=primary][zoom=15] name { text-size: 12; }
#major-road-labels[highway=secondary][zoom=15] name { text-size: 11; }
#major-road-labels[highway=tertiary][zoom=15] name { text-size: 11; }

#major-road-labels[highway=trunk][zoom=16] name { text-size: 14; }
#major-road-labels[highway=primary][zoom=16] name { text-size: 12; }
#major-road-labels[highway=secondary][zoom=16] name { text-size: 12; }
#major-road-labels[highway=tertiary][zoom=16] name { text-size: 11; }
#minor-road-labels[zoom=16] name { text-size: 10; }

#major-road-labels[highway=trunk][zoom=17] name { text-size: 16; }
#major-road-labels[highway=primary][zoom=17] name { text-size: 14; }
#major-road-labels[highway=secondary][zoom=17] name { text-size: 14; }
#major-road-labels[highway=tertiary][zoom=17] name { text-size: 12; }
#minor-road-labels[zoom=17] name { text-size: 11; }
