view: calendario_nomina {
  sql_table_name: `envases-analytics-eon-poc.LDG_CPI_RRHH_MX.CALENDARIO_NOMINA` ;;

  dimension_group: dia_pago {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DIA_PAGO ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FECHA ;;
  }
  dimension_group: mes_calendario {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.MES_CALENDARIO ;;
  }
}
