<script type="text/javascript" src="https://www.amcharts.com/lib/3/ammap.js"></script>
<script type="text/javascript" src="https://www.amcharts.com/lib/3/maps/js/worldLow.js"></script>

<script>
  {ignore}
    AmCharts.makeChart("map",{
      "type": "map",
      "pathToImages": "http://www.amcharts.com/lib/3/images/",
      "addClassNames": true,
      "fontSize": 15,
      "color": "#FFFFFF",
      "projection": "equirectangular",
      "backgroundAlpha": 1,
      "backgroundColor": "rgba(25,26,30,1)",
      "dataProvider": {
        "map": "worldLow",
        "getAreasFromMap": true,
        "areas": [
          {
            "id": "UA",
            "title": "Ukraine",
            "color": "rgba(0,188,104,1)" // настройки цвета стран
          },
          {
            "id": "PL",
            "title": "Poland",
            "color": "rgba(255,0,0,1)"
          }
        ]
      },
      "balloon": {
        "horizontalPadding": 15,
        "borderAlpha": 0,
        "borderThickness": 1,
        "verticalPadding": 15
      },
      "areasSettings": {
        "color": "rgba(0,0,0,1)",
        "outlineColor": "rgba(36,36,36,1)",
        "rollOverOutlineColor": "rgba(36,36,36,1)",
        "rollOverBrightness": 20,
        "selectedBrightness": 20,
        "selectable": true,
        "unlistedAreasAlpha": 0,
        "unlistedAreasOutlineAlpha": 0
      },
      "imagesSettings": {
        "alpha": 1,
        "color": "rgba(0,0,0,1)",
        "outlineAlpha": 0,
        "rollOverOutlineAlpha": 0,
        "outlineColor": "rgba(36,36,36,1)",
        "rollOverBrightness": 20,
        "selectedBrightness": 20,
        "selectable": true
      },
      "linesSettings": {
        "color": "rgba(0,0,0,1)",
        "selectable": true,
        "rollOverBrightness": 20,
        "selectedBrightness": 20
      },
      "zoomControl": {
        "zoomControlEnabled": true,
        "homeButtonEnabled": false,
        "panControlEnabled": false,
        "right": 0,
        "bottom": 0,
        "minZoomLevel": 0.5,
        "gridHeight": 100,
        "gridAlpha": 0.1,
        "gridBackgroundAlpha": 0,
        "gridColor": "#FFFFFF",
        "draggerAlpha": 1,
        "buttonCornerRadius": 2
      }
    });
  {/ignore}
</script>
