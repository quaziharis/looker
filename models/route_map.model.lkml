connection: "snowlooker"

include: "/views/**/*.view"

map_layer: trip {
  file:"map_(1).topojson"
  property_key: "Route"
}

explore: map_layer_trip {}
