view: map_layer_vendors1 {
  derived_table: {
    sql: select '37830'as ZIP_CODE,'50307' as VENDOR_ID,'1' as VENDOR_NO
      union select '37830','3737','2'
      union select '37830','4341','3'
      union select '37830','17090','4'
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
    sql: ${TABLE}."VENDOR_ID" ;;
  }
  measure: VENDOR_NO {
    type: sum
    sql: ${TABLE}."VENDER_NO" ;;
  }

  set: detail {
    fields: [ZIP_CODE,VENDOR_ID,VENDOR_NO]
  }
}
