view: parametros {
  dimension: fecha_inicio_mes {
    hidden: yes
    type: date
    sql: DATE_TRUNC(CAST({% date_start calendario.sel_periodo %} AS DATE), MONTH);;
  }
  dimension: fecha_inicio_anio {
    hidden: yes
    type: date
    sql: DATE_TRUNC(CAST({% date_start calendario.sel_periodo %} AS DATE), YEAR);;
  }
  dimension: fecha_fin {
    hidden: yes
    type: date
    sql: DATE_SUB(CAST({% date_end calendario.sel_periodo %} AS DATE), INTERVAL 1 DAY);;
  }
  #DIMENSIONES
  #Dimensiones para definir períodos
  dimension_group: periodo {
    type: time
    timeframes: [raw, date, week, month, month_name, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PERIODO ;;
  }
  dimension: es_mes_seleccionado {
    type: yesno
    hidden: yes
    description: "Determina los registros que pertenecen al mes actual"
    sql: ${periodo_raw} BETWEEN ${fecha_inicio_mes} AND ${fecha_fin};;
  }
  dimension: es_anio_seleccionado {
    type: yesno
    hidden: yes
    description: "Determina los registros que pertenecen al año actual"
    sql: ${periodo_raw} BETWEEN ${fecha_inicio_anio} AND ${fecha_fin};;
  }
  dimension: es_mes_ly {
    type: yesno
    hidden: yes
    description: "Determina los registros que pertenecen al mes del año anterior"
    sql: ${periodo_raw} BETWEEN DATE_SUB(${fecha_inicio_mes}, INTERVAL 1 YEAR) AND DATE_SUB(${fecha_fin}, INTERVAL 1 YEAR);;
  }
  dimension: es_ly {
    type: yesno
    hidden: yes
    description: "Determina los registros que pertenecen al año anterior"
    sql: ${periodo_raw} BETWEEN DATE_SUB(${fecha_inicio_anio}, INTERVAL 1 YEAR) AND DATE_SUB(${fecha_fin}, INTERVAL 1 YEAR);;
  }
}
