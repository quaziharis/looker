project_name: "custom_map"

visualization: {
  id: "mp"
  label: "MP"
  #url: "https://raw.githubusercontent.com/quaziharis/custom-maps/master/testing/overlayusinginternaldata.js"
  dependencies: ["https://code.jquery.com/jquery-2.2.4.min.js","https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.9.1/underscore-min.js","https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.6/d3.min.js","https://cdnjs.cloudflare.com/ajax/libs/d3-legend/1.13.0/d3-legend.min.js","https://cdnjs.cloudflare.com/ajax/libs/topojson/1.6.19/topojson.min.js","https://d3js.org/d3-geo-projection.v2.min.js"]
  #file: "custom.js"
  file: "hellow_world.js"
}

visualization: {
  id: "liquid_fill_gauge"
  label: "liquid_fill_gauge"
  dependencies: ["https://code.jquery.com/jquery-2.2.4.min.js","https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.9.1/underscore-min.js","https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.6/d3.min.js","https://cdnjs.cloudflare.com/ajax/libs/d3-legend/1.13.0/d3-legend.min.js","https://cdnjs.cloudflare.com/ajax/libs/topojson/1.6.19/topojson.min.js","https://d3js.org/d3-geo-projection.v2.min.js"]
  file: "liquid_fill_gauge.js"
}


visualization: {
  id: "custom"
  label: "CUSTOM"
  #url: "https://vcreatek.cloud.looker.com/projects/custom_map/files/mp2.js"
  dependencies: ["https://code.jquery.com/jquery-2.2.4.min.js","https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.9.1/underscore-min.js","https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.6/d3.min.js","https://cdnjs.cloudflare.com/ajax/libs/d3-legend/1.13.0/d3-legend.min.js","https://cdnjs.cloudflare.com/ajax/libs/topojson/1.6.19/topojson.min.js","https://code.jquery.com/jquery-2.2.4.min.js",
    "https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.9.1/underscore-min.js",
    "https://cdnjs.cloudflare.com/ajax/libs/d3/4.13.0/d3.js"]
  file: "mp2.js"
}

visualization: {
  id: "calendere_heatmap"
  label: "calendere_heatmap"
  dependencies: ["https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js","https://code.jquery.com/jquery-2.2.4.min.js","https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.9.1/underscore-min.js","https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.6/d3.min.js","https://cdnjs.cloudflare.com/ajax/libs/d3-legend/1.13.0/d3-legend.min.js","https://cdnjs.cloudflare.com/ajax/libs/topojson/1.6.19/topojson.min.js","https://d3js.org/d3-geo-projection.v2.min.js"]
  file: "calendere_heatmap.js"
}

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
