view: map_layer_vendors {
  derived_table: {
<<<<<<< HEAD
    sql: select '37705'as ZIP_CODE,'17090' as VENDOR_ID, 'DAN COOK HTG & A/C, INC.' as VENDOR_NAME, 'SR' as VENDOR_TYPE_CODE,'217090' as COMMERCIAL_PROPERTY_ID, 'PSC' as TRADE_CODE, 'PRIMARY' as SERVICE_AREA_TYPE_CODE,'36.2179' as Latitude, '-84.0113' as Longitude
      union select '37710','17090','DAN COOK HTG & A/C, INC.','SR','217090','PSC','PRIMARY','36.1523','-84.2897'
      union select '37716','17090','DAN COOK HTG & A/C, INC.','SR','217090','PSC','PRIMARY','36.0993', '-84.1466'
      union select '37830','17090','DAN COOK HTG & A/C, INC.','SR','217090','PSC','PRIMARY','35.9927','-84.2704'
      union select '37840','17090','DAN COOK HTG & A/C, INC.','SR','217090','PSC','PRIMARY','36.0457', '-84.3669'
      union select '37845','17090','DAN COOK HTG & A/C, INC.','SR','217090','PSC','PRIMARY','36.0912','-84.446'
      union select '37716','17090','DAN COOK HTG & A/C, INC.','SR','217090','PSC','PRIMARY','35.9761', '-84.1182'
      union select '76501','5085','COVE PLUMBING INC.','SR','205085','PLB','SECONDARY','31.0932','-97.3109'
      union select '76502','5085','COVE PLUMBING INC.','SR','205085','PLB','SECONDARY','31.0865', '-97.4008'
      union select '76504','5085','COVE PLUMBING INC.','SR','205085','PLB','SECONDARY','31.0995','-97.3577'
      union select '76513','5085','COVE PLUMBING INC.','SR','205085','PLB','SECONDARY','31.0733', '-97.4864'
      union select '29653','142152','L & M APPLIANCE REPAIR','SR','642832','APL','TERTIARY','34.2869','-82.2367'
      union select '77701','376841','BLUE WATER POOL SERVICE','SR','1618971','SPA','TERTIARY','30.0741', '-94.1036'
      union select '37830','142153','OAK RIDGE POOLS','SR','123456','ABL','QUATERNARY','35.9927','-84.2704'
      union select '37843','142153','OAK RIDGE POOLS','SR','123456','ABL','QUATERNARY','36.0137', '-83.0535'
=======
    sql: select '37705'as ZIP_CODE,'17090' as VENDOR_ID, 'DAN COOK HTG & A/C, INC.' as VENDOR_NAME,'36.2179' as Latitude, '-84.0113' as Longitude,'1' as VENDOR_NO
      union select '37710','17090','DAN COOK HTG & A/C, INC.','36.1523','-84.2897','1'
      union select '37716','17090','DAN COOK HTG & A/C, INC.','36.0993', '-84.1466','1'
      union select '37830','17090','DAN COOK HTG & A/C, INC.','35.9927','-84.2704','1'
      union select '37840','17090','DAN COOK HTG & A/C, INC.','36.0457', '-84.3669','1'
      union select '37845','17090','DAN COOK HTG & A/C, INC.','36.0912','-84.446', '1'
      union select '37716','17090','DAN COOK HTG & A/C, INC.','35.9761', '-84.1182','1'
      union select '76501','5085','COVE PLUMBING INC.','31.0932','-97.3109','2'
      union select '76502','5085','COVE PLUMBING INC.','31.0865', '-97.4008','2'
      union select '76504','5085','COVE PLUMBING INC.','31.0995','-97.3577','2'
      union select '76513','5085','COVE PLUMBING INC.','31.0733', '-97.4864','2'
      union select '29653','142152','L & M APPLIANCE REPAIR','34.2869','-82.2367','3'
      union select '77701','376841','BLUE WATER POOL SERVICE','30.0741', '-94.1036','4'
      union select '37830','50307','CHAPMAN HEATING AND COOLING','31.0865', '-97.4008','5'
      union select '37830','3737','OAK RIDGE POOLS','31.0995','-97.3577','6'
      union select '37830','4341','MAIN. TECHNOLOGIES, INC(HVAC)','31.0733', '-97.4864','7'
      union select '37830','17090','DAN COOK HTG & A/C, INC.','30.0741', '-94.1036','1'
>>>>>>> branch 'master' of git@github.com:quaziharis/looker.git
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

  set: detail {
    fields: [ZIP_CODE,VENDOR_ID,VENDOR_NAME,VENDOR_TYPE_CODE,COMMERCIAL_PROPERTY_ID,TRADE_CODE,SERVICE_AREA_TYPE_CODE,location]
  }
}
