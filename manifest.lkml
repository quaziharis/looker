project_name: "custom_map"

visualization: {
  id: "mp"
  label: "MP"
  url: "https://raw.githubusercontent.com/quaziharis/custom-maps/master/testing/overlayusinginternaldata.js"
  dependencies: ["https://code.jquery.com/jquery-2.2.4.min.js","https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.9.1/underscore-min.js","https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.6/d3.min.js","https://cdnjs.cloudflare.com/ajax/libs/d3-legend/1.13.0/d3-legend.min.js","https://cdnjs.cloudflare.com/ajax/libs/topojson/1.6.19/topojson.min.js"]
  #file: "https://vcreatek.cloud.looker.com/projects/custom_map/files/visualizations/custom.js"
}

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
