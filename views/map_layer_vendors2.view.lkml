view: map_layer_vendors2 {
  derived_table: {
    sql:select '78751' as Zip_Code, '1636942' as Vendor_Id, '1' as Color_Code
    union select '78749', '1636942', '1'
    union select '78748', '1636942', '1'
    union select '78747', '1636942', '1'
    union select '78747', '1621182', '2'
    union select '78747', '1636942&1621182', '3'
    union select '78745', '1636942', '1'
    union select '78745', '1621182', '2'
    union select '78745', '1636942&1621182', '3'
    union select '78744', '1636942', '1'
    union select '78744', '1621182', '2'
    union select '78744', '1636942&1621182', '3'
    union select '78741', '1636942', '1'
    union select '78739', '1621182', '2'
    union select '78739', '1636942', '1'
    union select '78737', '1636942', '1'
    union select '78723', '1636942', '1'
    union select '78705', '1636942', '1'
    union select '78704', '1636942', '1'
    union select '78702', '1636942', '1'
    union select '78676', '1621182', '2'
    union select '78666', '1621182', '2'
    union select '78666', '1636942', '1'
    union select '78656', '1621182', '2'
    union select '78656', '1636942', '1'
    union select '78655', '1621182', '2'
    union select '78655', '1636942', '1'
    union select '78652', '1636942', '1'
    union select '78652', '1621182', '2'
    union select '78648', '1636942', '1'
    union select '78644', '1636942', '1'
    union select '78640', '1621182', '2'
    union select '78640', '1636942', '1'
    union select '78638', '1636942', '1'
    union select '78619', '1621182', '2'
    union select '78616', '1636942', '1'
    union select '78610', '1636942', '1'
    union select '78610', '1621182', '2'
    union select '78404', '1621182', '2'
    union select '78155', '1636942', '1'
    union select '78133', '1621182', '2'
    union select '78132', '1621182', '2'
    union select '78132', '1636942', '1'
    union select '78130', '1621182', '2'
    union select '78130', '1636942', '1'
    union select '78130', '1621182&1636942', '3'
    union select '78132', '1621182&1636942', '3'
    union select '78610', '1636942&1621182', '3'
    union select '78640', '1636942&1621182', '3'
    union select '78652', '1636942&1621182', '3'
    union select '78655', '1636942&1621182', '3'
    union select '78656', '1636942&1621182', '3'
    union select '78666', '1636942&1621183', '3'
    union select '78739', '1636942&1621184', '3'
    ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: ZIP_CODE {
    type: zipcode
    map_layer_name: vendors2
    sql: ${TABLE}."ZIP_CODE" ;;
  }


  dimension: VENDOR_ID {
    type: string
    sql: ${TABLE}."VENDOR_ID" ;;
  }

  dimension: Color_Code {
    type: number
    sql: ${TABLE}."COLOR_CODE" ;;
  }

  set: detail {
    fields: [ZIP_CODE,VENDOR_ID,Color_Code]
  }
}
