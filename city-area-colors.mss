Map { map-bgcolor: #b1b8b8; }
#water-bodies[zoom>=9] { polygon-fill: #b1b8b8; }

#processed-coast-background[zoom>=9],
#null-island-background[zoom>=12]
{
    polygon-fill: #e4e3db;
}

#green-areas[zoom>=9][kind=forest],
#green-areas[zoom>=10][kind=park],
#green-areas[zoom>=12]
{
    polygon-fill: #cddcd2;
}

#civic-areas[zoom>=12] { polygon-fill: #d9d5c9; }

#parking-areas[zoom>=12] { polygon-fill: #e4d8c5; }

#building-areas[zoom>=12] { polygon-fill: #dadacd; }
