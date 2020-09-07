connection: "snowlooker"

include: "/views/**/*.view"

map_layer: vendors1 {
  file:"map.topojson"
  property_key: "VENDORS_ID,ZIP_CODE"
}

explore: map_layer_vendors1 {}
