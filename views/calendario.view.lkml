view: calendario {
  derived_table: {
    sql:
      SELECT
        Date as FECHA,
        EXTRACT(YEAR FROM Date) AS ANIO,
        EXTRACT(WEEK FROM Date) AS SEMANA,
        EXTRACT(DAY FROM Date) AS DIA,
        FORMAT_DATE('%Q', Date) as TRIMESTRE,
        EXTRACT(MONTH FROM Date) AS MES,
        FORMAT_DATE('%B', Date) as NOMBRE_MES,
        CAST(FORMAT_DATE('%u', Date) AS INT64) AS DIA_SEMANA,
        FORMAT_DATE('%A', Date) AS NOMBRE_DIA,
        IF(FORMAT_DATE('%A', Date) IN ('Saturday', 'Sunday'), FALSE, TRUE) AS ES_HABIL,
        COUNT(Date) OVER (PARTITION BY EXTRACT(YEAR FROM Date), EXTRACT(MONTH FROM Date)) AS TOTAL_DIAS_MES,
        IF(COUNT(Date) OVER (PARTITION BY EXTRACT(YEAR FROM Date)) = 365, FALSE, TRUE) AS ES_BISIESTO,
      FROM UNNEST(
          GENERATE_DATE_ARRAY(
            DATE_SUB(DATE_TRUNC(CURRENT_DATE(), YEAR), INTERVAL 2 YEAR),
          LAST_DAY(CURRENT_DATE())
          )) AS Date
    ;;
  }
  filter: sel_periodo {
    label: "Periodo"
    type: date
  }
  dimension_group: periodo {
    hidden: yes
    type: time
    timeframes: [raw, date, week, month, month_name, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FECHA;;
  }
  dimension: MES {
    type: number
    sql: ${TABLE}.MES ;;
  }
  dimension: anio {
    type: string
    sql: CAST(${TABLE}.ANIO AS STRING) ;;
  }
  dimension: NOMBRE_MES {
    type: string
    sql: ${TABLE}.NOMBRE_MES ;;
    order_by_field: MES
  }
}
