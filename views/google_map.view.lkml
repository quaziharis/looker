view: google_map {
  derived_table: {
    sql: select 'GOOGLE MAP' as Google_Map,'https://www.google.com/maps/dir///@20.2533959,72.4453311,8z/data=!4m2!4m1!3e0'as url
      union select 'San Fransisco to California','https://www.google.com/maps/dir/San+Francisco,+CA,+USA/California,+USA/@37.1723134,-121.0453863,9z/data=!3m1!4b1!4m14!4m13!1m5!1m1!1s0x80859a6d00690021:0x4a501367f076adff!2m2!1d-122.4194155!2d37.7749295!1m5!1m1!1s0x808fb9fe5f285e3d:0x8b5109a227086f55!2m2!1d-119.4179324!2d36.778261!3e0'
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
    html:<a href="{{value}}"><button>URL Button</button></a> ;; }
  set: detail {
    fields: [Google_Map,url]
  }
}
