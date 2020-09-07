view: map_layer_vendors1 {
  derived_table: {
    sql: select '50307' as Vendor_id,'37830'as ZIP_CODE,'1' as VENDOR_NO,'CHAPMAN HEATING AND COOLING' as Vendors_Name
      union select '3737','37830','2','OAK RIDGE POOLS'
      union select '4341','37830','3','MAIN. TECHNOLOGIES, INC(HVAC)'
      union select '17090','37830','4','DAN COOK HTG & A/C, INC.'
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: ZIP_CODE {
    type: zipcode
    map_layer_name: vendors1
    sql: ${TABLE}."ZIP_CODE" ;;
  }


  dimension: VENDOR_ID {
    type: string
    map_layer_name: vendors1
    sql: ${TABLE}."VENDORID" ;;
  }
  dimension: VENDORS_NAME {
    type: string
    sql: ${TABLE}."VENDORS_NAME" ;;
  }
  measure: VENDOR_NO {
    type: sum
    sql: ${TABLE}."VENDOR_NO" ;;
  }

  set: detail {
    fields: [ZIP_CODE,VENDOR_ID,VENDOR_NO,VENDORS_NAME]
  }
}
