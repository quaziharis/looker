connection: "snowlooker"

include: "/views/**/*.view"

map_layer: territory {
  file:"book1_(1).topojson"
  property_key: "ZIP_CODE"
}

explore: map_layer_territory {}
explore: Vendors {
  label: "Vendors"
  view_name:Vendors }
