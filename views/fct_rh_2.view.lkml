include: "rrhh_parametros.view"
view: fct_rh_2 {
  derived_table: {
    sql:
      WITH CALENDARIO AS (
        SELECT Date AS FECHA,
        FROM
          UNNEST( GENERATE_DATE_ARRAY( DATE_SUB(DATE_TRUNC(CURRENT_DATE(), YEAR), INTERVAL 2 YEAR), LAST_DAY(CURRENT_DATE()) )) AS Date ),
      PERIODO AS (
        SELECT
          DATE_TRUNC(CALENDARIO.FECHA, MONTH) AS PERIODO,
          MIN(CALENDARIO.FECHA) AS INICIO,
          MAX(CALENDARIO.FECHA) AS FIN
        FROM CALENDARIO
        GROUP BY 1 ),
      ACTIVOS AS (
        SELECT * EXCEPT (SalarioSemanal, SalarioMensual)
        FROM `RPT_CORP.RRHH_Plantilla`
        WHERE
          Estatus = 'Activo'
          AND CodigoPersonal < 10000000 )
      SELECT
        PERIODO.PERIODO,
        ACTIVOS.*, Remuneraciones.BET01 SalarioSemanal, (Remuneraciones.BET01 / 7) * 30.4 SalarioMensual
        FROM
          PERIODO
          LEFT JOIN ACTIVOS ON ACTIVOS.Fin >= PERIODO.FIN AND ACTIVOS.Inicio <= PERIODO.FIN
          LEFT JOIN `RAW_CPI_RRHH_MX.PA0008_REMUNERACIONES` Remuneraciones
            ON ACTIVOS.CodigoPersonal = Remuneraciones.PERNR
            AND LAST_DAY(PERIODO.PERIODO, month) BETWEEN Remuneraciones.BEGDA AND Remuneraciones.ENDDA;;
  }

  extends: [rrhh_parametros]
  ## ========================= ##
  ##        DIMENSIONES        ##
  ## ========================= ##
  dimension: division_envases {
    label: "Division Envases"
    type: string
    sql: ${TABLE}.DivisionEnvases ;;
  }
  dimension: subdivision {
    label: "Subdivision"
    type: string
    sql: ${TABLE}.Subdivision ;;
  }
  dimension: unidad_organizativa {
    label: "Unidad Organizativa"
    type: string
    sql: ${TABLE}.UnidadOrganizativa ;;
  }

  dimension_group: periodo {
    type: time
    timeframes: [raw, date, week, month, quarter, year,month_name]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PERIODO ;;
  }
  #Dimensiones ocultas, se ocupan en las métricas
  dimension: codigo_personal {
    hidden: yes
    type: string
    sql: CAST(${TABLE}.CodigoPersonal AS String) ;;
  }
  dimension: salario_semanal {
    hidden: yes
    type: number
    sql: ${TABLE}.SalarioSemanal ;;
  }
  dimension: salario_mensual {
    hidden: yes
    type: number
    sql: ${TABLE}.SalarioMensual ;;
  }
  ## ========================= ##
  ##      Filtros ocultos      ##
  ## ========================= ##
  dimension: mes_seleccionado {
    hidden: yes
    description: "Extrae el mes del filtro de fecha"
    type: number
    sql: EXTRACT(Month FROM {% date_start date_filter %}) ;;
  }

  dimension: en_rango {
    hidden: yes
    description: "Determina si el periodo es menor o igual al mes seleccionado, sin importar el año"
    type: yesno
    sql: EXTRACT(Month FROM ${periodo_raw}) = ${mes_seleccionado} ;;
  }
  ## ========================= ##
  ##         METRICAS          ##
  ## ========================= ##
  measure: head_count {
    type: count_distinct
    sql: ${codigo_personal} ;;
    filters: [en_rango: "yes"]
    value_format_name: decimal_0
  }
  measure: total_salario {
    type: sum
    sql: ${salario_mensual} ;;
    filters: [en_rango: "yes"]
    value_format_name: usd
  }
}
