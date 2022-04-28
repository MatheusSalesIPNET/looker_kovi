view: amostra_dados {
  sql_table_name: kovi_looker.amostra_dados;;

  dimension: altitude {
    type: number
    sql: ${TABLE}.altitude ;;
  }

  dimension: day {
    type: number
    sql: ${TABLE}.[day] ;;
  }

  dimension: deviceid {
    type: number
    value_format_name: id
    sql: ${TABLE}.deviceid ;;
  }

  dimension: eventname {
    type: string
    sql: ${TABLE}.eventname ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: geometry_field {
    type: string
    tags: ["geojson"]
    sql: ST_ASGEOJSON(ST_GEOGFROMTEXT(${TABLE}.field_name)) ;; }

  dimension: month {
    type: number
    sql: ${TABLE}.[month] ;;
  }

  dimension_group: timetofix {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timetofix ;;
  }

  dimension: vehiclebattery {
    type: number
    sql: ${TABLE}.vehiclebattery ;;
  }

  dimension: vehicleodometer {
    type: number
    sql: ${TABLE}.vehicleodometer ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.[year] ;;
  }

  measure: count {
    type: count
    drill_fields: [eventname]
  }
}
