connection: "snowlooker"

include: "/views/**/*.view"

map_layer: vendors1 {
  file:"map_(2).topojson"
  property_key: "Vendorid"
}

explore: map_layer_vendors1 {}
