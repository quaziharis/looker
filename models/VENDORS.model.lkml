connection: "snowlooker"

include: "/views/**/*.view"

map_layer: vendors {
  file:"vendor_details.topojson"
  property_key: "ZIP_CODE"
}

explore: map_layer_vendors {}
explore:google_map {
  label: "GOOGLE MAP"
  view_name:google_map}
explore:pushpin_map {
  label: "PushPin_map"
  view_name:pushpin_map}
explore:volume_map {
  label: "volume_map"
  view_name:volume_map}
