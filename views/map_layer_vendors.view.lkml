view: map_layer_vendors {
  derived_table: {
    sql: select '37705'as ZIP_CODE,'17090' as VENDOR_ID, 'DAN COOK HTG & A/C, INC.' as VENDOR_NAME, 'SR' as VENDOR_TYPE_CODE,'217090' as COMMERCIAL_PROPERTY_ID, 'PSC' as TRADE_CODE, 'PRIMARY' as SERVICE_AREA_TYPE_CODE,'36.2179' as Latitude, '-84.0113' as Longitude,'1000' as Color_Code
      union select '37710','17090','DAN COOK HTG & A/C, INC.','SR','217090','PSC','PRIMARY','36.1523','-84.2897','2000'
      union select '37716','17090','DAN COOK HTG & A/C, INC.','SR','217090','PSC','PRIMARY','36.0993', '-84.1466','3000'
      union select '37830','17090','DAN COOK HTG & A/C, INC.','SR','217090','PSC','PRIMARY','35.9927','-84.2704','4000'
      union select '37840','17090','DAN COOK HTG & A/C, INC.','SR','217090','PSC','PRIMARY','36.0457', '-84.3669','5000'
      union select '37845','17090','DAN COOK HTG & A/C, INC.','SR','217090','PSC','PRIMARY','36.0912','-84.446','6000'
      union select '37931','17090','DAN COOK HTG & A/C, INC.','SR','217090','PSC','PRIMARY','35.9761', '-84.1182','7000'
      union select '76501','5085','COVE PLUMBING INC.','SR','205085','PLB','SECONDARY','31.0932','-97.3109','8000'
      union select '76502','5085','COVE PLUMBING INC.','SR','205085','PLB','SECONDARY','31.0865', '-97.4008','9000'
      union select '76504','5085','COVE PLUMBING INC.','SR','205085','PLB','SECONDARY','31.0995','-97.3577','10000'
      union select '76513','5085','COVE PLUMBING INC.','SR','205085','PLB','SECONDARY','31.0733', '-97.4864','11000'
      union select '29653','142152','L & M APPLIANCE REPAIR','SR','642832','APL','TERTIARY','34.2869','-82.2367','12000'
      union select '77701','376841','BLUE WATER POOL SERVICE','SR','1618971','SPA','TERTIARY','30.0741', '-94.1036','13000'
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

  dimension: VENDOR_NAME {
    type: string
    map_layer_name: vendors
    sql: ${TABLE}."VENDOR_NAME" ;;
  }

  dimension: VENDOR_TYPE_CODE {
    type: string
    map_layer_name: vendors
    sql: ${TABLE}."VENDOR_TYPE_CODE" ;;
  }
  dimension: COMMERCIAL_PROPERTY_ID {
    type: string
    map_layer_name: vendors
    sql: ${TABLE}."COMMERCIAL_PROPERTY_ID" ;;
  }
  dimension: TRADE_CODE {
    type: string
    map_layer_name: vendors
    sql: ${TABLE}."TRADE_CODE" ;;
  }
  dimension: SERVICE_AREA_TYPE_CODE {
    type: string
    map_layer_name: vendors
    sql: ${TABLE}."SERVICE_AREA_TYPE_CODE" ;;
  }
  dimension: location {
    type: location
    map_layer_name: vendors
    sql_latitude: ${TABLE}.latitude;;
    sql_longitude: ${TABLE}.longitude;;
  }

  measure: VENDOR_ID {
    type: sum
    sql: ${TABLE}."VENDOR_ID" ;;
  }
  measure: Color_Code {
    type: sum
    sql: ${TABLE}."COLOR_CODE" ;;
  }

  set: detail {
    fields: [ZIP_CODE,VENDOR_ID,VENDOR_NAME,VENDOR_TYPE_CODE,COMMERCIAL_PROPERTY_ID,TRADE_CODE,SERVICE_AREA_TYPE_CODE,location,Color_Code]
  }
}
