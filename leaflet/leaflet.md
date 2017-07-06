# Leaflet.js and maps!
_Data visualization: Maps give us a cool way to tell stories!_

## How do Web Maps Work?

-   They're tiled vector maps
-   Devs have to declare a viewpoint (map size) and centerpoint. From there, the map server returns an arranged set of tiles without gaps
    -   It speeds up the loading time, because we don't necessarily need the _whole_ map
-   Leaflet is mobile-friendly!

## Leaflet.js
-   Written in response to heavyweight/complex tools
-   Small, lightweight, widely used
-   Central Map class -> built in methods for zoom, pan, markers, etc
-   Could make heat maps, political maps, map markups, all the cool things
-   Tiles could be photos (like satellite photos... Leaflet knows how to arrange the tiles as long as it knows geographic location)
-   Oh hot diggity, you can have animated maps! Lisa's example uses a weather app for animations
-   You could do maps that aren't Earth! Leaflet will let you use any base map!
    -   Don't even have to do like a traditional "map"... could make a chart
-   Use jQuery to grab the file, add a geoJSON layer to the data to add another layer
-   This is just to display a map, give user controls, add layers of data over it
-   This is **_not_** a _directions_ type of map

#### Maps could be made of multiple maps!
-   **Base map** (e.g. US geological map, really any map that gives tiles)
-   Marked up map? (like for political maps)
-   Street layer?

**Leaflet formats**
-   Batch geocoding
    -   You can submit address names and it'll give you lat/lon
-   Then everything into `geoJSON` so that Leaflet will understand it

Check out [@lisawilliams](https://github.com/lisawilliams)' repo [here](https://github.com/lisawilliams/map) for an example!
