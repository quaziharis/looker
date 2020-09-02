view: map_layer_territory {
  derived_table: {
    sql: select '614SD' as TERRITORY_CODE,'57198'as ZIP_CODE,'800'as Sales,'43.6746' as latitude,'-96.7913'as longitude
      union select '614SD','57197', '800','43.6746','-96.7913'
      union select '614SD','57196','800','38.00042','-121.3237'
      union select  '117','95207','200','37.8898','-121.2539'
      union select  '117','95208','200','38.0355','-121.3438'
      union select  '117','95209','200','38.0251','-121.2972'
      union select  '117','95210','200','37.9811','-121.308'
      union select  '117','95211','200','38.0389','-121.2421'
      union select  '117','95212','230','37.9048','-121,2268'
      union select  '117','95213','200','37.9555','-121.1906'
      union select  '117','95215','200','38.0049','-121.4002'
      union select  '117','95219','200','38.2002','-121.2351'
      union select  '117','95220','200','37.8827','-121.2798'
      union select  '117','95231','200','38.0185','-121.0568'
      union select  '117','95236','200','38.1628','-121.1486'
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
  dimension: location {
    type: location
    map_layer_name: territory
    sql_latitude: ${TABLE}."latitude";;
    sql_longitude: ${TABLE}."longitude";;
  }

  measure: sales {
    type: sum
    sql: ${TABLE}."SALES" ;;
  }

  set: detail {
    fields: [location,TERRITORY_CODE,ZIP_CODE, sales]
  }
}
