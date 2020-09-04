connection: "snowlooker"

include: "/views/**/*.view"

map_layer: vendors {
  file:"map_(2).topojson"
  property_key: "ZIP_CODE"
}

explore: map_layer_vendors {}
