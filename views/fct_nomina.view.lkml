view: fct_nomina {
  derived_table: {
    sql: SELECT
      NOM.PERNR CODIGOPERSONAL,
      PLT.UnidadOrganizativa UNIDADORGANIZATIVA,
      NOM.KOSTL CENTROCOSTOS,
      CASE
        WHEN SUBSTR(NOM.KOSTL,2,1) = 'A' THEN 'ALU'
        WHEN SUBSTR(NOM.KOSTL,2,1) = 'P' THEN 'PET'
        WHEN SUBSTR(NOM.KOSTL,2,1) = 'F' THEN 'ALG'
        WHEN SUBSTR(NOM.KOSTL,2,1) = 'C' THEN 'CORP'
        ELSE 'OTRO' END DIV_ENVASES,
      NOM.BUKRS || ' ' || SOC.BUTXT SOCIEDAD,
      DVP.NAME1 DIVISION,
      SDP.BTEXT SUBDIVISION,
      FPPER PERIODO,
      FPBEG INICIO,
      FPEND FIN,
      NOM.PAYDT PAGO, --CAMPO DE FECHA DE PAGO, ESTA ES LA QUE MANDA EN FILTROS Y AGRUPADORES
      PRCLS || ' ' || PRCLT TIPO,
      PRCLV || ' ' || PRCVT CONCEPTO,
      NOM.LGART || ' ' || CC.LGTXT CC,
      TIPO_CLASIFICACION.Orden ORDEN_CLASIFICACION,
      TIPO_CLASIFICACION.Clasificacion CLASIFICACION,
      NOM.ANZHL CANTIDAD,
      NOM.BETRG IMPORTE
    FROM
      envases-analytics-qa.RAW_CPI_RRHH_MX.ODATA_NOMINA NOM
      LEFT JOIN `@{GCP_PROJECT}.RAW_CPI_RRHH_MX.cat_text_cc_nomina` CC
        ON NOM.LGART = CC.LGART
      LEFT JOIN `@{GCP_PROJECT}.RPT_CORP.RRHH_TiposClasificacion2` TIPO_CLASIFICACION
        ON NOM.LGART = TIPO_CLASIFICACION.Codigo
      LEFT JOIN `@{GCP_PROJECT}.RAW_CPI_RRHH_MX.cat_div_personal` DVP
        ON NOM.WERKS = DVP.PERSA
      LEFT JOIN `@{GCP_PROJECT}.RAW_CPI_RRHH_MX.cat_sociedades` SOC
        ON NOM.BUKRS = SOC.BUKRS
      LEFT JOIN `@{GCP_PROJECT}.RAW_CPI_RRHH_MX.cat_subdiv_personal` SDP
        ON NOM.WERKS = SDP.WERKS AND NOM.BTRTL = SDP.BTRTL
      LEFT JOIN `@{GCP_PROJECT}.RPT_CORP.RRHH_Plantilla` PLT
        ON NOM.PERNR = PLT.CodigoPersonal AND NOM.PAYDT BETWEEN PLT.Inicio AND PLT.Fin

      ;;
  }


  ## ========================= ##
  ##   Nomina                  ##
  ## ========================= ##

  # Codigo del Personal
  dimension: codigopersonal {
    group_label: "Nomina"
    label: "Codigo de personal"
    description: "Código de personal"
    type: number
    sql: ${TABLE}.CODIGOPERSONAL ;;
  }

  # Unidad Organizativa
  dimension: unidad_organizativa {
    group_label: "Nomina"
    label: "Unidad Organziativa"
    description: "Unidad Organizativa"
    type: string
    sql: ${TABLE}.UNIDADORGANIZATIVA ;;
  }

  # Centro de Costos
  dimension: centro_costos {
    group_label: "Nomina"
    label: "Centro de Costos"
    description: "Centro de Costos"
    type: string
    sql: ${TABLE}.CENTROCOSTOS ;;
  }

  # Division de Envases
  dimension: division_envases {
    group_label: "Nomina"
    label: "División de Envases"
    description: "Nombre de la división de Envases"
    type: string
    sql: ${TABLE}.DIV_ENVASES ;;
  }

  # Codigo y Nombre de la Sociedad
  dimension: sociedad {
    group_label: "Nomina"
    label: "Sociedad"
    description: "Codigo y Nombre de la Sociedad"
    type: string
    sql: ${TABLE}.SOCIEDAD ;;
  }

  # Codigo y Nombre de la Division
  dimension: division {
    group_label: "Nomina"
    label: "Division"
    description: "Codigo y Nombre de la Division"
    type: string
    sql: ${TABLE}.DIVISION ;;
  }

  # Codigo y Nombre de la SubDivision
  dimension: subdivision {
    group_label: "Nomina"
    label: "Subdivision"
    description: "Codigo y Nombre de la Subdivision"
    type: string
    sql: ${TABLE}.SUBDIVISION ;;
  }

  # @TODO: Definir descripcion
  # Periodo
  dimension: periodo {
    group_label: "Nomina"
    label: "Periodo"
    description: "Periodo"
    type: string
    sql: ${TABLE}.PERIODO ;;
  }

  # @TODO: Definir descripcion
  # Tipo
  dimension: tipo {
    group_label: "Nomina"
    label: "Tipo"
    description: "Tipo"
    type: string
    sql: ${TABLE}.TIPO ;;
  }

  # Codigo y Nombre del Concepto
  dimension: concepto {
    group_label: "Nomina"
    label: "Concepto"
    description: "Codigo y nombre del concepto"
    type: string
    sql: ${TABLE}.CONCEPTO ;;
  }

  # Categoria del Concepto
  dimension: cc {
    group_label: "Nomina"
    label: "Categoria del Concepto"
    description: "Nombre de la Categoria del Concepto"
    type: string
    sql: ${TABLE}.CC ;;
  }

  # Clasificacion de la categoria del concepto
  dimension: clasificacion_cc  {
    group_label: "Nomina"
    label: "Clasificación Cat. Concepto"
    description: "Clasificación de la Categoria del Concepto"
    order_by_field: orden_clasificacion_cc
    type: string
    sql: ${TABLE}.CLASIFICACION;;
  }

  # @TODO: Definir descripcion
  # Cantidad
  dimension: cantidad {
    group_label: "Nomina"
    label: "Cantidad"
    description: "Cantidad"
    type: number
    sql: ${TABLE}.CANTIDAD ;;
  }

  # @TODO: Definir descripcion
  # Importe
  dimension: importe {
    group_label: "Nomina"
    label: "Importe"
    description: "Importe"
    type: number
    sql: ${TABLE}.IMPORTE ;;
  }

  ## ========================= ##
  ##  Dimensiones ocultas      ##
  ## ========================= ##

  dimension: orden_clasificacion_cc {
    group_label: "Nomina"
    label: "Orden de Clasifiacion Concepto"
    description: "Orden en el que se clasificacn los conceptos"
    type: string
    hidden: yes
    sql: ${TABLE}.ORDEN_CLASIFICACION ;;
  }

  ## ========================= ##
  ##  Grupos de dimensiones    ##
  ## ========================= ##

  # Fecha de inicio con diferentes ventanas de tiempo
  dimension_group: fecha_inicio {
    group_label: "Nomina"
    label: "Fecha de inicio"
    description: "Fecha de inicio con diferentes ventanas de tiempo"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.INICIO ;;
  }

  # Fecha de fin con diferentes ventanas de tiempo
  dimension_group: fecha_fin {
    group_label: "Nomina"
    label: "Fecha de fin"
    description: "Fecha de fin con diferentes ventanas de tiempo"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FIN ;;
  }

  # Fecha de pago con diferentes ventanas de tiempo
  dimension_group: fecha_pago {
    group_label: "Nomina"
    label: "Fecha de pago"
    description: "Fecha de pago con diferentes ventanas de tiempo"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PAGO ;;
  }

  ## ========================= ##
  ##           Filtros         ##
  ## ========================= ##

  # Filtro de fecha
  filter: date_filter {
    label: "Período"
    description: "Usa este filtro de fecha en combinación con la dimensión de timeframes para filtrado dinámico de fechas"
    type: date
    default_value: "[hoy]"
  }

  ## ========================= ##
  ##      Filtros ocultos      ##
  ## ========================= ##

  # Indica si la fecha pertenece al año actual
  dimension: is_current_year {
    description: "Indica si la fecha pertenece al año actual"
    hidden: yes
    type: yesno
    sql: ${fecha_pago_date} >= DATE_TRUNC(DATE({% date_start date_filter %}), YEAR)
      AND ${fecha_pago_date} <= DATE_TRUNC(DATE({% date_start date_filter %}), DAY);;
  }

  # Indica si la fecha pertenece al año pasado
  dimension: is_previous_year {
    description: "Indica si la fecha pertenece al año pasado"
    hidden: yes
    type: yesno
    sql: ${fecha_pago_date} >= DATE_TRUNC(DATE({% date_start date_filter %}), YEAR) - INTERVAL 1 YEAR
      AND  ${fecha_pago_date} <= DATE_TRUNC(DATE({% date_start date_filter %}), DAY) - INTERVAL 1 YEAR;;
  }

  # Indica si la fecha pertenece a hace dos años
  dimension: is_two_years_ago {
    description: "Indica si la fecha pertenece a hace dos años"
    hidden: yes
    type: yesno
    sql: ${fecha_pago_date} >= DATE_TRUNC(DATE({% date_start date_filter %}), YEAR) - INTERVAL 2 YEAR
      AND  ${fecha_pago_date} <= DATE_TRUNC(DATE({% date_start date_filter %}), DAY) - INTERVAL 2 YEAR;;
  }

  # Indica si la fecha pertenece al mes actual
  dimension: is_current_month {
    description: "Indica si la fecha pertenece al mes actual"
    hidden: yes
    type: yesno
    sql: ${fecha_pago_date} >= DATE_TRUNC(DATE({% date_start date_filter %}), MONTH)
      AND ${fecha_pago_date} <= DATE_TRUNC(DATE({% date_start date_filter %}), DAY);;
  }

  # Indica si la fecha pertenece al mismo mes del año pasado
  dimension: is_previous_year_month {
    description: "Indica si la fecha pertenece al mismo mes del año pasado"
    hidden: yes
    type: yesno
    sql: ${fecha_pago_date} >= DATE_TRUNC(DATE({% date_start date_filter %}), MONTH) - INTERVAL 1 YEAR
      AND  ${fecha_pago_date} <= DATE_TRUNC(DATE({% date_start date_filter %}), DAY) - INTERVAL 1 YEAR;;
  }

  # Indica si la fecha pertenece al mismo mes, pero de hace dos años
  dimension: is_two_years_ago_month {
    description: "Indica si la fecha pertenece al mismo mes, pero de hace dos años"
    hidden: yes
    type: yesno
    sql: ${fecha_pago_date} >= DATE_TRUNC(DATE({% date_start date_filter %}), MONTH) - INTERVAL 2 YEAR
      AND  ${fecha_pago_date} <= DATE_TRUNC(DATE({% date_start date_filter %}), DAY) - INTERVAL 2 YEAR;;
  }

  ## ========================= ##
  ##     Medidas basicas       ##
  ## ========================= ##

  # Cantidad de registros
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # Suma de Cantidad General
  measure: cantidad_sum {
    group_label: "Cantidad"
    label: "Cantidad"
    description: "Suma de la cantidad"

    type: sum
    sql: ${TABLE}.CANTIDAD ;;
  }

  # Contador de Codigos único de Personal
  measure: empleado_unico  {
    group_label: "Contadores"
    label: "Codigo de Personal"
    description: "Codigo unico de Personal"

    type: count_distinct
    sql: ${codigopersonal} ;;
  }


  ## ========================= ##
  ##  Medidas con filtros      ##
  ## ========================= ##

  # @TODO: Utilizar nuevas medidas con mejor nombre
  measure: year {
    type: sum
    sql: ${TABLE}.IMPORTE ;;

    filters: {
      field: is_current_year
      value: "yes"
    }
  }

  measure: lyear {
    type: sum
    sql: ${TABLE}.IMPORTE ;;

    filters: {
      field: is_previous_year
      value: "yes"
    }
  }

  ## Medidas de Importe

  # Importe del año actual
  measure: importe_year {
    group_label: "Importe"
    label: "Importe del año actual"
    description: "Suma del importe del año actual"

    type: sum
    sql: ${TABLE}.IMPORTE ;;

    filters: {
      field: is_current_year
      value: "yes"
    }

    value_format: "$#,##0.00"
  }

  # Importe del año anterior
  measure: importe_lyear {
    group_label: "Importe"
    label: "Importe del año anterior"
    description: "Suma del importe del año anterior"

    type: sum
    sql: ${TABLE}.IMPORTE ;;

    filters: {
      field: is_previous_year
      value: "yes"
    }

    value_format: "$#,##0.00"
  }

  # Importe de hace 2 años
  measure: importe_lyear2 {
    group_label: "Importe"
    label: "Importe de hace dos años"
    description: "Suma del importe de hace dos años"

    type:  sum
    sql: ${TABLE}.IMPORTE ;;

    filters: {
      field: is_two_years_ago
      value: "yes"
    }

    value_format: "$#,##0.00"
  }

  # Importe del mes actual
  measure: importe_month {
    group_label: "Importe"
    label: "Importe del mes actual"
    description: "Suma del importe del mes actual"

    type: sum
    sql: ${importe} ;;

    filters: {
      field: is_current_month
      value: "yes"
    }

    value_format: "$#,##0.00"
  }

  # Importe del mes el año pasado
  measure: importe_lmonth {
    group_label: "Importe"
    label: "Importe del mes el año pasado"
    description: "Suma del importe del mes el año pasado"

    type: sum
    sql: ${importe} ;;

    filters: {
      field: is_previous_year_month
      value: "yes"
    }

    value_format: "$#,##0.00"
  }

  #Importe del mes hace dos años
  measure: importe_lmonth2 {
    group_label: "Importe"
    label: "Importe del mes hace dos años"
    description: "Suma del importe del mes hace dos años"

    type: sum
    sql: ${importe} ;;

    filters: {
      field: is_two_years_ago_month
      value: "yes"
    }

    value_format: "$#,##0.00"
  }

  ## Medidas de Cantidad

  # Cantidad del mes actual
  measure: cantidad_month {
    group_label: "Cantidad"
    label: "Cantidad del mes actual"
    description: "Suma de la cantidad del mes actual"

    type: sum
    sql: ${TABLE}.CANTIDAD ;;

    filters: {
      field: is_current_month
      value: "yes"
    }

    value_format: "#,##0.00"
  }

  # Cantidad del mes anterior
  measure: cantidad_lmonth {
    group_label: "Cantidad"
    label: "Cantidad del mes anterior"
    description: "Suma de la cantidad del mes anterior"

    type: sum
    sql: ${TABLE}.CANTIDAD ;;

    filters: {
      field: is_previous_year_month
      value: "yes"
    }

    value_format: "#,##0.00"
  }

  ## ========================= ##
  ##          KPI's            ##
  ## ========================= ##

  # @TODO: Eliminar y utilizar nueva metrica variacion_importe_year
  measure: Variacion_cantidad {

    label: "Variacion Anual (Importe)"
    type: number
    sql: (${year} - ${lyear})  ;;
  }

  # @TODO: Eliminar y utilizar nueva metrica variacion_perc_importe_year
  measure: Variacion {

    label: "% Variacion Anual (Importe)"
    type: number
    sql: CASE WHEN ${lyear}=0  then 100 else (${year} - ${lyear}) / NULLIF(${lyear},0)*100 end  ;;

    value_format: "0.00\%"
  }

  ## Medidas KPI de Importe

  # Variación entre el importe del año actual contra el año pasado
  measure: variacion_importe_year_lyear {
    group_label: "Importe"
    label: "Variación $ anual (año actual vs año pasado)"
    description: "Variación entre el importe del año actual contra el año pasado"

    type: number
    sql: (${importe_year} - ${importe_lyear}) ;;

    value_format: "$#,##0.00"
  }

  # Variación % entre el importe del año actual contra el año pasado
  measure: variacion_perc_importe_year_lyear {
    group_label: "Importe"
    label: "Variación % anual (año actual vs año pasado)"
    description: "Variación % entre el importe del año actual contra el año pasado"

    type: number
    sql: CASE WHEN ${importe_lyear} = 0
        THEN 100
        ELSE (${importe_year} - ${importe_lyear}) / NULLIF(${importe_lyear}, 0) * 100
      END ;;

    value_format: "0.00\%"
  }

  # Variacion entre el importe del año pasado contra hace dos años
  measure: variacion_importe_lyear_lyear2 {
    group_label: "Importe"
    label: "Variación $ anual (año pasado vs hace dos años)"
    description: "Variación entre el importe del año pasado contra hace dos años"

    type: number
    sql: (${importe_lyear} - ${importe_lyear2}) ;;

    value_format: "$#,##0.00"
  }

  # Variación % entre el importe del año pasado contra hace dos años
  measure: variacion_perc_importe_lyear_lyear2 {
    group_label: "Importe"
    label: "Variación % anual (año pasado vs hace dos años)"
    description: "Variación % entre el importe del año pasado contra hace dos años"

    type: number
    sql: CASE WHEN ${importe_lyear2} = 0
        THEN 100
        ELSE (${importe_lyear} - ${importe_lyear2}) / NULLIF(${importe_lyear2}, 0) * 100
      END ;;

    value_format: "0.00\%"
  }

  # Variación entre el importe del mes actual contra el mes del año pasado
  measure: variacion_importe_month_lmonth { # @TODO: Reisar graficos
    group_label: "Importe"
    label: "Variacion $ mensual (mes actual vs el año pasado)"
    description: "Variación entre el importe del mes actual contra el mes del año pasado"

    type: number
    sql: (${importe_month} - ${importe_lmonth})  ;;

    value_format: "$#,##0.00"
  }

  # Variación % entre el importe del mes actual contra el mes del año pasado
  measure: variacion_perc_importe_month_lmonth { # @TODO: Revisar graficos, cambio a minuscula el nombre
    group_label: "Importe"
    label: "Variacion % mensual (mes actual vs el año pasado)"
    description: "Variación % entre el importe del mes actual contra el mes del año pasado"

    type: number
    sql: CASE WHEN ${importe_lmonth} = 0
        THEN 100
        ELSE (${importe_month} - ${importe_lmonth}) / NULLIF(${importe_lmonth}, 0) * 100
      END ;;

    value_format: "0.00\%"
  }

  # Variación entre el importe del mes del año pasada contra el mes de hace dos años
  measure: variacion_importe_lmonth_lmonth2 {
    group_label: "Importe"
    label: "Variacion $ mensual (mes del año pasado vs hace dos años)"
    description: "Variación entre el importe del mes del año pasado contra el mes de hace dos años"

    type: number
    sql: (${importe_lmonth} - ${importe_lmonth2}) ;;

    value_format: "$#,##0.00"
  }

  # Variación % entre el imporete del mes del año pasado contra el mes de hace dos años
  measure: variacion_perc_importe_lmonth_lmonth2 {
    group_label: "Importe"
    label: "Variacion % mensual (mes del año pasado vs hace dos años)"
    description: "Variación % entre el importe del mes del año pasado contra el mes de hace dos años"

    type: number
    sql: CASE WHEN ${importe_lmonth2} = 0
        THEN 100
        ELSE (${importe_lmonth} - ${importe_lmonth2}) / NULLIF(${importe_lmonth2}, 0) * 100
      END ;;

    value_format: "0.00\%"
  }

  ## Medidas KPI de Cantidad

  # Variacion entre la cantidad del mes actual contra el mes del año anterior
  measure: variacion_cantidad_mensual { # @TODO: Revisar graficos, cambio a minuscula el nombre
    group_label: "Cantidad"
    label: "Variación mensual"
    description: "Variación entre la cantidad del mes actual contra el mes del año anterior"

    type: number
    sql: (${cantidad_month} - ${cantidad_lmonth})  ;;

    value_format: "#,##0.00"
  }

  # Variación entre la cantidad del mes actual contra el mes del año anterior
  measure: variacion_perc_mensual { # @TODO: Revisar graficos, cambio a minuscula el nombre
    group_label: "Cantidad"
    label: "Variacion % mensual"
    description: "Variación % entre la cantidad del mes actual contra el mes del año anterior"

    type: number
    sql: CASE WHEN ${cantidad_lmonth} = 0
        THEN 100
        ELSE (${cantidad_month} - ${cantidad_lmonth}) / NULLIF(${cantidad_lmonth}, 0) * 100
      END ;;

    value_format: "0.00\%"
  }

  ## Medidas KPI de Importe por Clasificacion de Categoria de Concepto

  # Importe del mes actual para la categoria de concepto: Sueldos
  measure: importe_sueldos_month {
    group_label: "Clasificación de Concepto"
    label: "Importe mensual - Sueldos"
    description: "Importe del mes actual para la categoria de concepto: Sueldos"

    type: sum
    sql: ${importe} ;;

    filters: [clasificacion_cc: "Sueldos"]

    filters: {
      field: is_current_month
      value: "yes"
    }
  }

  # Importe del mes actual para la categoria de concepto: Tiempo Extra
  measure: importe_tiempo_extra_month {
    group_label: "Clasificación de Concepto"
    label: "Importe mensual - Tiempo Extra"
    description: "Importe del mes actual para la categoria de concepto: Tiempo Extra"

    type: sum
    sql: ${importe} ;;

    filters: [clasificacion_cc: "Tiempo Extra"]

    filters: {
      field: is_current_month
      value: "yes"
    }
  }

  # Variación % del Importe mensual de Tiempo Extra contra Sueldos
  measure: tiempo_extra_vs_sueldos_month {
    group_label: "Clasificación de Concepto"
    label: "% T.E. vs Sueldos Mensual"
    description: "Variación % del Importe mensual de Tiempo Extra contra Sueldos"

    sql: ${importe_tiempo_extra_month} / NULLIF(${importe_sueldos_month}, 0) ;;

    value_format: "0.00%"
  }

  # Suma del importe de Sueldos
  measure: importe_sueldos {
    group_label: "Clasificación de Concepto"
    label: "Importe - Sueldos"
    description: "Sumatoria del Importe para la clasificación de Sueldos"

    type: sum
    sql: ${importe} ;;

    filters: [clasificacion_cc: "Sueldos"]
  }

  # Suma del importe de Tiempo Extra
  measure: importe_tiempo_extra {
    group_label: "Clasificación de Concepto"
    label: "Importe - Tiempo Extra"
    description: "Sumatoria del Importe para la clasificación de Tiempo Extra"

    type: sum
    sql: ${importe} ;;

    filters: [clasificacion_cc: "Tiempo Extra"]
  }

  # Variación % del Importe de Tiempo Extra contra Sueldos
  measure: tiempo_extra_vs_sueldos {
    group_label: "Clasificación de Concepto"
    label: "% T.E. vs Sueldos"
    description: "Variación % del Importe de Tiempo Extra contra Sueldos"

    sql: ${importe_tiempo_extra} / NULLIF(${importe_sueldos}, 0) ;;

    value_format: "0.00%"
  }

  # Suma de la cantidad de Tiempo Extra
  measure: cantidad_tiempo_extra {
    group_label: "Clasificación de Concepto"
    label: "Cantidad - Tiempo Extra"
    description: "Sumatoria de la Cantidad para la clasificación de Tiempo Extra"

    type: sum
    sql: ${cantidad} ;;

    filters: [clasificacion_cc: "Tiempo Extra"]
  }


################################################################################################

  measure: year_Prestaciones {
    type: sum
    sql: ${TABLE}.IMPORTE ;;


    filters: {
      field: is_current_year
      value: "yes"
    }

    filters: [clasificacion_cc: "Prestaciones"]
  }

  measure: lyear_Prestaciones {
    type: sum
    sql: ${TABLE}.IMPORTE ;;


    filters: {
      field: is_previous_year
      value: "yes"
    }

    filters: [clasificacion_cc: "Prestaciones"]
  }

  measure: Variacion_cantidad_Prestaciones {

    label: "Variacion Anual Prestaciones (Importe)"
    type: number
    sql: (${year_Prestaciones} - ${lyear_Prestaciones})  ;;


  }




  set: detail {
    fields: [
      codigopersonal,
      sociedad,
      division,
      subdivision,
      periodo,
      fecha_pago_date,
      fecha_fin_date,
      tipo,
      concepto,
      cc,
      cantidad,
      importe
    ]
  }
}
