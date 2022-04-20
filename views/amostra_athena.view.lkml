view: amostra_athena {
  # # You can specify the table name if it's different from the view name:
  sql_table_name: default.looker_poc_sample_data ;;
  #
  # Define your dimensions and measures here, like this:
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
    sql_latitude: ROUND(${latitude}, 12) ;;
    sql_longitude: ROUND(${longitude}, 12) ;;
  }

  dimension: coordenates {
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
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
    drill_fields: [eventname]
  }
}
