view: map_layer_vendors2 {
  derived_table: {
    sql: select '37826' as Zip_Code,'vd1'as Vendor_id,'1' as Color_Code,'Vendor_Name_1' as Vendor_Name
      union select '37828','vd1','1',''
      union select '37829','vd1','1','Vendor_Name_1'
      union select '37830','vd1&vd2','3','Vendor_Name_1&Vendor_Name_2'
      union select '37931','vd2','2','Vendor_Name_2'
      union select '37932','vd2','2','Vendor_Name_2'
      union select '37771','vd2','2','Vendor_Name_2'
      union select '37772','vd2&vd3','5','Vendor_Name_2&Vendor_Name_3'
      union select '37934','vd3','4','Vendor_Name_3'
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
    map_layer_name: vendors2
    sql: ${TABLE}."VENDOR_ID" ;;
  }
  dimension: VENDORS_NAME {
    type: string
    sql: ${TABLE}."VENDORS_NAME" ;;
  }
  measure: Color_Code {
    type: sum
    sql: ${TABLE}."COLOR_CODE" ;;
  }

  set: detail {
    fields: [ZIP_CODE,VENDOR_ID,Color_Code,VENDORS_NAME]
  }
}
