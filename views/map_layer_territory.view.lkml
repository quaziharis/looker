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
      union select  '125','91501','2500'
      union select  '125','91502','2500'
      union select  '125','91503','2500'
      union select  '125','91504','2500'
      union select  '125','91505','2500'
      union select  '125','91506','2500'
      union select  '125','91507','2500'
      union select  '125','91508','2500'
      union select  '125','91510','2500'
      union select  '125','91520','2500'
      union select  '125','91521','2500'
      union select  '125','91522','2500'
      union select  '125','91523','2500'
      union select  '125','91526','2500'
      union select  '125','91200','2500'
      union select  '125','91201','2500'
      union select  '125','91202','2500'
      union select  '125','91203','2500'
      union select  '125','91204','2500'
      union select  '125','91205','2500'
      union select  '125','91206','2500'
      union select  '125','91207','2500'
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
