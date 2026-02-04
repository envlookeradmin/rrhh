include: "parametros.view"
include: "menu_navegacion_443.view"


view: vw_complemento_ausentismos_accidentes {
  sql_table_name: `RPT_CORP.tbl_complemento_ausentismos_accidentes` ;;
  extends: [parametros,menu_navegacion_443]


  dimension: area_personal {
    type: string
    sql: ${TABLE}.AreaPersonal ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.Cantidad ;;
  }
  dimension: division_envases {
    type: string
    sql: ${TABLE}.Division ;;
  }
  dimension: id_area_personal {
    type: string
    sql: ${TABLE}.ID_AreaPersonal ;;
  }
  dimension: id_sociedad {
    type: string
    sql: ${TABLE}.ID_Sociedad ;;
  }
  dimension: id_subdivision {
    type: string
    sql: ${TABLE}.ID_Subdivision ;;
  }
  dimension: id_subtipo {
    type: string
    sql: ${TABLE}.ID_Subtipo ;;
  }
  dimension: sociedad {
    type: string
    sql: ${TABLE}.Sociedad ;;
  }
  dimension: subdivision {
    type: string
    sql: ${TABLE}.Subdivision ;;
  }
  dimension: codigo_pais {
    type: string
    sql: ${TABLE}.CodigoPais ;;
  }
  dimension: subtipo {
    type: string
    sql: ${TABLE}.Subtipo ;;
  }
  measure: count {
    type: count
  }

  measure: accidentes_adp_month {
    group_label: "Medidas"
    label: "Accidentes ADP Mes"
    description: "Accidentes ADP del mes actual"

    type: sum
    sql: ${cantidad} ;;

    filters: {
      field: es_mes_seleccionado
      value: "yes"
    }

    filters: [id_subtipo: "2001"]
  }

  measure: accidentes_meta_month {
    group_label: "Medidas"
    label: "Accidentes Meta Mes"
    description: "Accidentes Meta del mes actual"

    type: sum
    sql: ${cantidad} ;;

    filters: {
      field: es_mes_seleccionado
      value: "yes"
    }

    filters: [id_subtipo: "8003"]
  }

  measure: accidentes_meta_indicador_month {
    group_label: "Medidas"
    label: "Accidentes Meta Indicador Mes"
    description: "Accidentes Meta del mes actual con Indicador"

    type: string
    sql: CASE
      WHEN ${accidentes_adp_month} < (${accidentes_meta_month}) THEN
        CONCAT(FORMAT("%.2f", ${accidentes_meta_month}), ' 🟢')
      ELSE
        CONCAT(FORMAT("%.2f", ${accidentes_meta_month}), ' 🔴')
      END;;
  }

  measure: indice_frecuencia_ltr_month {
    group_label: "Medidas"
    label: "Indice de frecuencia LTR Mes"
    description: "Indice de frecuencia LTR del mes actual"

    type: sum
    sql: ${cantidad} ;;

    filters: {
      field: es_mes_seleccionado
      value: "yes"
    }

    filters: [id_subtipo: "2003"]
  }

  measure: dias_incapacidad_month {
    group_label: "Medidas"
    label: "Días de Incapacidad Mes"
    description: "Días de incapacidad del mes actual"

    type: sum
    sql: ${cantidad} ;;

    filters: {
      field: es_mes_seleccionado
      value: "yes"
    }

    filters: [id_subtipo: "2004"]
  }

  measure: indice_severidad_month {
    group_label: "Medidas"
    label: "Indice de severidad Mes"
    description: "Indice de severidad del mes actual"

    type: sum
    sql: ${cantidad} ;;

    filters: {
      field: es_mes_seleccionado
      value: "yes"
    }

    filters: [id_subtipo: "2005"]
  }

  measure: ausentismos_month {
    group_label: "Medidas"
    label: "Ausentismos Mes"
    description: "Ausentismos del mes actual"

    type: sum
    sql: ${cantidad} ;;

    filters: {
      field: es_mes_seleccionado
      value: "yes"
    }

    filters: [id_subtipo: "9101"]
  }

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

    filters: [id_subtipo: "AC"]
  }

  measure: dias_del_mes {
    hidden: yes
    group_label: "Medidas"
    label: "Dias Mes"
    description: "Dias del mes actual"

    type: number
    sql: DATE_DIFF(${fecha_fin}, ${fecha_inicio_mes}, DAY) + 1;;
  }

  measure: ratio_operaciones {
    group_label: "Medidas"
    label: "Ratio de Operaciones"
    description: "Cantidad de personal activo por días del mes en consulta"

    type: number
    sql: ${activos_month} * ${dias_del_mes} ;;
  }

  measure: porcentaje_ausentismo {
    group_label: "Medidas"
    label: "% Ausentismo"
    description: "Faltas injustificadas entre el ratio de opreaciones"

    type: number
    sql: SAFE_DIVIDE(${ausentismos_month}, ${ratio_operaciones}) * 100 ;;

    value_format: "0.00"
  }

  measure: ausentismos_meta_month {
    group_label: "Medidas"
    label: "Ausentismos Meta Mes"
    description: "Ausentismos Meta del mes actual"

    type: sum
    sql: ${cantidad} ;;

    filters: {
      field: es_mes_seleccionado
      value: "yes"
    }

    filters: [id_subtipo: "8002"]

    value_format: "0.00"
  }

  measure: ausentismos_meta_indicador_month {
    group_label: "Medidas"
    label: "Ausentismos Meta Indicador Mes"
    description: "Ausentismos Meta del mes actual con Indicador"

    type: string
    sql: CASE
      WHEN ${porcentaje_ausentismo} < (${ausentismos_meta_month}) THEN
        CONCAT(FORMAT("%.2f", ${ausentismos_meta_month}), ' 🟢')
      ELSE
        CONCAT(FORMAT("%.2f", ${ausentismos_meta_month}), ' 🔴')
      END;;
  }
}
