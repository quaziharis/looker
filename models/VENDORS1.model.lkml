connection: "snowlooker"

include: "/views/**/*.view"

map_layer: vendors1 {
  file:"map.topojson"
  projection: mercator
}

explore: map_layer_vendors1 {}
