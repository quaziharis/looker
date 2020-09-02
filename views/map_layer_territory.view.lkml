view: map_layer_territory {
  derived_table: {
    sql: select '614SD' as TERRITORY_CODE,'57198'as ZIP_CODE,'800' as Sales
      union select '614SD','57197', '800'
      union select '614SD','57196','800'
      union select  '117','95207','200'
      union select  '117','95208','200'
      union select  '117','95209','200'
      union select  '117','95210','200'
      union select  '117','95211','200'
      union select  '117','95212','230'
      union select  '117','95213','200'
      union select  '117','95215','200'
      union select  '117','95219','200'
      union select  '117','95220','200'
      union select  '117','95231','200'
      union select  '117','95236','200'
      union select  '117','95237','200'
      union select  '115','94022','1500'
      union select  '115','94024','1500'
      union select  '115','94040','1500'
      union select  '115','94041','1500'
      union select  '115','94043','1500'
      union select  '115','94085','1500'
      union select  '115','94086','1500'
      union select  '115','94087','1500'
      union select  '115','94089','1500'
      union select  '115','95002','1500'
      union select  '115','95014','1500'
      union select  '115','95015','1500'
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
