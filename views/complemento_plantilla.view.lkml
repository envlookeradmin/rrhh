include: "parametros.view"

view: plantilla {
  sql_table_name: `RPT_CORP.tbl_complemento_plantilla` ;;
  extends: [parametros]

  #------------------#
  # Dimensiones
  #------------------#

  # Nombre de la Sociedad
  dimension: sociedad {
    group_label: "Plantilla"
    label: "Sociedad"
    description: "Nombre de la sociedad"
    type: string
    sql: ${TABLE}.SOCIEDAD ;;
  }

  # Nombre del Area del Personal
  dimension: area_personal {
    group_label: "Plantilla"
    label: "Area de personal"
    description: "Nombre del area de personal"
    type: string
    sql: ${TABLE}.AREA_PERSONAL ;;
  }

  # Subdivision
  dimension: subdivision {
    group_label: "Plantilla"
    label: "Subdivision"
    description: "Nombre de la Planta"
    type: string
    sql: ${TABLE}.SUBDIVISION ;;
  }

  # division
  dimension: division_envases {
    group_label: "Plantilla"
    label: "Division Envases"
    description: "Nombre de la division"
    type: string
    sql: ${TABLE}.DivisionEnvases ;;
  }

  # Genero
  dimension: genero {
    group_label: "Plantilla"
    label: "Genero"
    description: "Masculino o Femenino"
    type: string
    sql: ${TABLE}.GENERO ;;
  }

  # Fecha de nacimiento
  dimension_group: fecha_nacimiento {
    group_label: "Plantilla"
    label: "Fecha de nacimiento"
    description: "Fecha de nacimiento con diferentes ventanas de tiempo"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FECHA_NACIMIENTO ;;
  }

  # Generacion
  dimension: generacion {
    group_label: "Plantilla"
    label: "Generacion"
    description: "Nombre de la generacion"
    type: string
    sql: ${TABLE}.GENERACION ;;
  }

  # Clase Medida
  dimension: clase_medida {
    group_label: "Plantilla"
    label: "Clase Medida"
    description: "Clase Medida"
    type: string
    sql: ${TABLE}.CLASE_MEDIDA ;;
  }

  # Motivo Medida
  dimension: motivo_medida {
    group_label: "Plantilla"
    label: "Motivo Medida"
    description: "Motivo Medida"
    type: string
    sql: ${TABLE}.MOTIVO_MEDIDA ;;
  }

  # cantidad
  dimension: cantidad {
    group_label: "Plantilla"
    label: "Cantidad"
    description: "Cantidad"
    type: number
    sql: ${TABLE}.CANTIDAD ;;
  }

  # Codigo Pais
  dimension: codigo_pais {
    group_label: "Plantilla"
    label: "Codigo Pais"
    description: "Codigo Pais"
    type: string
    sql: ${TABLE}.CODIGO_PAIS ;;
  }

  #------------------#
  # Medidas
  #------------------#

  # Cantidad de registros
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # Suma de Cantidad General
  measure: cantidad_month {
    group_label: "Medidas"
    label: "Cantidad Mes"
    description: "Cantidad del mes actual"

    type: sum
    sql: ${TABLE}.CANTIDAD ;;

    filters: {
      field: es_mes_seleccionado
      value: "yes"
    }
  }

  # activos en el mes
  measure: activos_month {
    group_label: "Medidas"
    label: "Activos Mes"
    description: "Activos del mes actual"

    type: sum
    sql: ${cantidad} ;;

    filters: {
      field: es_mes_seleccionado
      value: "yes"
    }

    filters: [clase_medida: "Activo"]
  }

  measure: altas_month {
    group_label: "Medidas"
    label: "Altas Mes"
    description: "Altas del mes actual"
    type:  sum
    sql: ${cantidad} ;;

    filters: {
      field: es_mes_seleccionado
      value: "yes"
    }

    filters: [clase_medida: "Alta"]
  }

  # personal autorizado
  measure: autorizados_month {
    group_label: "Medidas"
    label: "Autorizados Mes"
    description: "Plantilla autorizada del mes actual"

    type: sum
    sql: ${cantidad} ;;

    filters: {
      field: es_mes_seleccionado
      value: "yes"
    }

    filters: [clase_medida: "Plantilla Autorizada"]
  }

  # Bajas mensual
  measure: bajas_month {
    group_label: "Medidas"
    label: "Bajas Mes"
    description: "Bajas del mes actual"

    type:  sum
    sql: ${cantidad} ;;

    filters: {
      field: es_mes_seleccionado
      value: "yes"
    }

    filters: [clase_medida: "Baja"]
  }

  measure: bajas_vol_month {
    group_label: "Medidas"
    label: "Bajas Voluntario Mes"
    description: "Bajas tipo voluntario del mes actual"

    type: sum
    sql: ${cantidad} ;;

    filters: {
      field: es_mes_seleccionado
      value: "yes"
    }

    filters: [clase_medida: "Baja"]
    filters: [motivo_medida: "Voluntario"]
  }

  measure: rotacion_vol_month {
    group_label: "Medidas"
    label: "Rotacion Voluntario Mes %"
    type: number
    sql: CASE WHEN ${activos_month}=0  then 100 else (${bajas_vol_month}) / NULLIF(${activos_month}, 0) end  ;;

    value_format: "0.00\%"
  }

  measure: bajas_invol_month {
    group_label: "Medidas"
    label: "Bajas Involuntario Mes"
    description: "Bajas tipo involunatario del mes actual"

    type: sum
    sql: ${cantidad} ;;

    filters: {
      field: es_mes_seleccionado
      value: "yes"
    }

    filters: [clase_medida: "Baja"]
    filters: [motivo_medida: "Involuntario"]
  }

  measure: rotacion_invol_month {
    group_label: "Medidas"
    label: "Rotacion Involuntario Mes %"
    type: number
    sql: CASE WHEN ${activos_month}=0  then 100 else (${bajas_invol_month}) / NULLIF(${activos_month}, 0) end  ;;

    value_format: "0.00\%"
  }

  measure: rotacion_month {
    group_label: "Medidas"
    label: "Rotacion Mes %"
    type: number
    sql: CASE WHEN ${activos_month}=0  then 0 else (${bajas_month}) / NULLIF(${activos_month}, 0) end  ;;

    value_format: "0.00\%"
  }

  measure: rotacion_meta_month {
    group_label: "Medidas"
    label: "Rotacion Meta Mes"
    description: "Rotacion meta del mes actual"

    type:  sum
    sql: ROUND(${cantidad} / 100, 2);;
    value_format: "0.00\%"

    filters: {
      field: es_mes_seleccionado
      value: "yes"
    }

    filters: [clase_medida: "Rotacion"]
  }

  # Rotacion mensual
  measure: rotacion_meta_indicador_month {
    group_label: "Medidas"
    label: "Rotacion Meta Mes Indicador"
    description: "Rotacion meta del mes actual con indicador"

    type: string
    sql: CASE
      WHEN ${rotacion_month} <= (${rotacion_meta_month}) THEN
        CONCAT(FORMAT("%.2f%%", (${rotacion_meta_month})), ' 🟢')
      ELSE
        CONCAT(FORMAT("%.2f%%", (${rotacion_meta_month})), ' 🔴')
      END;;
  }


  measure: activos_menos_autorizados {
    group_label: "Medidas"
    label: "Activos - Autorizados"
    type: number
    sql: ${activos_month} - ${autorizados_month};;

    value_format: "0.00"
  }

  set: detail {
    fields: [
      genero,
      generacion,
      subdivision,
      area_personal,
      sociedad
    ]
  }
}
