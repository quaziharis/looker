connection: "snowlooker"

include: "/views/**/*.view"

map_layer: vendors2 {
  file:"map2.topojson"
  projection: mercator
}

explore: map_layer_vendors2 {}
