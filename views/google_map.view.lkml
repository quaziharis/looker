view: google_map {
  derived_table: {
    sql: select 'GOOGLE MAP' as Google_Map,'https://www.google.com/maps/@18.22719,74.5607819,8z'as url
      ;;
  }
  dimension: Google_Map{
    type: string
    sql: ${TABLE}."GOOGLE_MAP";;
  }
  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
  dimension: button {
    type:string
    sql: ${url} ;;
    html: <a href="https://www.google.com/maps/dir///@20.2533959,72.4453311,8z/data=!4m2!4m1!3e0"><button>URL Button</button></a> ;; }
  set: detail {
    fields: [Google_Map,url]
  }
}
