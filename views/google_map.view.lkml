view: google_map {
  derived_table: {
    sql: select 'Manager 1 'as Manager,'GOOGLE MAP' as Route,'https://www.google.com/maps/dir///@20.2533959,72.4453311,8z/data=!4m2!4m1!3e0'as url
      union select 'Manager 2','San Fransisco to California','https://www.google.com/maps/dir/San+Francisco,+CA,+USA/California,+USA/@37.1723134,-121.0453863,9z/data=!3m1!4b1!4m14!4m13!1m5!1m1!1s0x80859a6d00690021:0x4a501367f076adff!2m2!1d-122.4194155!2d37.7749295!1m5!1m1!1s0x808fb9fe5f285e3d:0x8b5109a227086f55!2m2!1d-119.4179324!2d36.778261!3e0'
      union select 'Manager 3','Texas to Las Vegas','https://www.google.com/maps/dir/Texas,+USA/Las+Vegas,+NV,+USA/@34.0383607,-112.0216321,6z/data=!3m1!4b1!4m14!4m13!1m5!1m1!1s0x864070360b823249:0x16eb1c8f1808de3c!2m2!1d-99.9018131!2d31.9685988!1m5!1m1!1s0x80beb782a4f57dd1:0x3accd5e6d5b379a3!2m2!1d-115.1398296!2d36.1699412!3e0'
      union select 'Manager 4','Chicago to Washington','https://www.google.com/maps/dir/Chicago,+IL,+USA/Washington+D.C.,+DC,+USA/@40.3673779,-84.577356,7z/data=!3m1!4b1!4m14!4m13!1m5!1m1!1s0x880e2c3cd0f4cbed:0xafe0a6ad09c0c000!2m2!1d-87.6297982!2d41.8781136!1m5!1m1!1s0x89b7c6de5af6e45b:0xc2524522d4885d2a!2m2!1d-77.0368707!2d38.9071923!3e0'
      ;;
  }
  dimension: Manager{
    type: string
    sql: ${TABLE}."MANAGER";;
  }
  dimension: Route{
    type: string
    sql: ${TABLE}."ROUTE";;
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
    fields: [Manager,Route,url]
  }
}
