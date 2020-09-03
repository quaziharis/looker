view: map_layer_trip {
  derived_table: {
    sql: select 'Main_path' as Route, '1000' as Sales
      union select 'Alternative_1', '2000'
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: Route {
    type: string
    map_layer_name: trip
    sql: ${TABLE}."Route" ;;
  }

  measure: sales {
    type: sum
    sql: ${TABLE}."SALES" ;;
  }

  set: detail {
    fields: [Route, sales]
  }
}
