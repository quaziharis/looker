view: map_layer_vendors2 {
  derived_table: {
    sql: select '37840' as Zip_Code,'1'as Vendor_id,'1' as Color_Code,'Vendor_Name_1' as Vendor_Name
      union select '37719','1','1','Vendor_Name_1'
      union select '37748','1','1','Vendor_Name_1'
      union select '37830','1','1','Vendor_Name_1'
      union select '37830','2','2','Vendor_Name_2'
      union select '37830','1&2','3','Vendor_Name_1&Vendor_Name_2'
      union select '37931','2','2','Vendor_Name_2'
      union select '37932','2','2','Vendor_Name_2'
      union select '37771','2','2','Vendor_Name_2'
      union select '37772','2','2','Vendor_Name_2'
      union select '37772','3','4','Vendor_Name_3'
      union select '37772','2&3','5','Vendor_Name_2&Vendor_Name_3'
      union select '37934','3','4','Vendor_Name_3'
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
  dimension: VENDORS_NAME {
    type: string
    sql: ${TABLE}."VENDOR_NAME" ;;
  }
  dimension: Color_Code {
    type: number
    sql: ${TABLE}."COLOR_CODE" ;;
  }

  set: detail {
    fields: [ZIP_CODE,VENDOR_ID,Color_Code,VENDORS_NAME]
  }
}
