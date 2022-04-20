view: amostra_dados {
  sql_table_name: [kovi_looker.amostra_dados]
    ;;

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

  dimension: map_location {
    type: location
    sql_latitude: ROUND(${latitude}, 2) ;;
    sql_longitude: ROUND(${longitude}, 2) ;;
  }

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
    approximate_threshold: 100000
    drill_fields: [eventname]
  }
}
