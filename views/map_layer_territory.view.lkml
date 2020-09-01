view: map_layer_territory {
  derived_table: {
    sql: select '614SD' as TERRITORY_CODE,'57198'as ZIP_CODE,'1000' as Sales
      union select '614SD','57197', '2000'
      union select '614SD','57196','500'
      union select  '117','95207','200'
      union select  '117','95208','200'
      union select  '117','95209','200'
      union select  '117','95210','200'
      union select  '117','95211','200'
      union select  '117','95212','230'
      union select  '117','95213','2000'
      union select  '117','95215','200'
      union select  '117','95219','200'
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: TERRITORY_CODE {
    type: string
    map_layer_name: territory
    sql: ${TABLE}."TERRITORY_CODE" ;;
  }
  dimension: ZIP_CODE {
    type: zipcode
    map_layer_name: territory
    sql: ${TABLE}."ZIP_CODE" ;;
  }

  measure: sales {
    type: sum
    sql: ${TABLE}."SALES" ;;
  }

  set: detail {
    fields: [TERRITORY_CODE,ZIP_CODE, sales]
  }
}
