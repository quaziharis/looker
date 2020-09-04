connection: "snowlooker"

include: "/views/**/*.view"

map_layer: vendors {
  file:"VENDORS.topojson"
  property_key: "ZIP_CODE"
}

explore: map_layer_vendors {}
