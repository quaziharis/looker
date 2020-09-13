connection: "snowlooker"

include: "/views/**/*.view"

map_layer: territory {
  file:"book1_(1).topojson"
  property_key: "TERRITORY_CODE"
}

explore: map_layer_territory {}
