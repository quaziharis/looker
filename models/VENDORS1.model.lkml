connection: "snowlooker"

include: "/views/**/*.view"

map_layer: vendors1 {
  file:"map.topojson"
  property_key: "Vendor_id,stroke-width"
}

explore: map_layer_vendors1 {}
