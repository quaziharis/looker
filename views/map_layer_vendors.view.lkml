view: map_layer_vendors {
  derived_table: {
    sql: select '37830'as ZIP_CODE,'50307' as VENDOR_ID, 'CHAPMAN HEATING AND COOLING' as VENDOR_NAME,'1' as VENDOR_NO
      union select '37830','3737','OAK RIDGE POOLS','2'
      union select '37830','4341','MAIN. TECHNOLOGIES, INC(HVAC)','3'
      union select '37830','4341','MAIN. TECHNOLOGIES, INC(HVAC)','3'
      union select '37830','4341','DAN COOK HTG & A/C, INC.','4'
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: ZIP_CODE {
    type: zipcode
    map_layer_name: vendors
    sql: ${TABLE}."ZIP_CODE" ;;
  }
  dimension: VENDOR_ID {
    type: string
    map_layer_name: vendors
    sql: ${TABLE}."VENDOR_ID" ;;
  }
  dimension: VENDOR_NAME {
    type: string
    map_layer_name: vendors
    sql: ${TABLE}."VENDOR_NAME" ;;
  }
  measure: VENDOR_NO {
    type: sum
    sql: ${TABLE}."VENDOR_NO" ;;
  }

  set: detail {
    fields: [ZIP_CODE,VENDOR_ID,VENDOR_NAME,VENDOR_NO]
  }
}
