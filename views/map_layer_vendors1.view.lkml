view: map_layer_vendors1 {
  derived_table: {
    sql: select '50307' as Vendorid,'37830'as ZIP_CODE,'1' as VENDOR_NO
      union select '3737','37830','2'
      union select '4341','37830','3'
      union select '17090','37830','4'
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
    sql: ${TABLE}."Vendorid" ;;
  }
  measure: VENDOR_NO {
    type: sum
    sql: ${TABLE}."VENDOR_NO" ;;
  }

  set: detail {
    fields: [ZIP_CODE,VENDOR_ID,VENDOR_NO]
  }
}
