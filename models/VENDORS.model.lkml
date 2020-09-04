connection: "snowlooker"

include: "/views/**/*.view"

map_layer: vendors {
  file:"vendor_details.topojson"
  property_key: "ZIP_CODE"
}

explore: map_layer_vendors {}
