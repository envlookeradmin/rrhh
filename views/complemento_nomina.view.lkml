view: complemento_nomina {
  sql_table_name: `envases-analytics-eon-poc.RPT_CORP.tbl_complemento_nomina` ;;

  dimension: codigo_pais {
    type: string
    sql: ${TABLE}.CodigoPais ;;
  }
  dimension: id_sociedad {
    hidden: yes
    type: string
    sql: ${TABLE}.IDSociedad ;;
  }
  dimension: sociedad {
    type: string
    sql: ${TABLE}.Sociedad ;;
  }
  dimension: id_area {
    hidden: yes
    type: string
    sql: ${TABLE}.IDArea ;;
  }
  dimension: area {
    type: string
    sql: ${TABLE}.Area ;;
  }
  dimension: id_subdivision {
    hidden: yes
    type: string
    sql: ${TABLE}.IDSubdivision ;;
  }
  dimension: subdivision {
    type: string
    sql: ${TABLE}.IDSubdivision || " " || ${TABLE}.Subdivision ;;
  }
  dimension: division {
    type: string
    sql: ${TABLE}.Division ;;
  }
  dimension_group: fecha_pago {
    type: time
    timeframes: [raw, date, week, month, month_name, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FechaPago ;;
  }
  dimension: moneda_origen {
    type: string
    sql: ${TABLE}.MonedaOrigen ;;
  }
  dimension: id_denominacion {
    hidden: yes
    type: string
    sql: ${TABLE}.IDDenominacion ;;
  }
  dimension: denominacion {
    type: string
    sql: ${TABLE}.Denominacion ;;
    order_by_field: id_denominacion
  }
  dimension: tipo_cambio {
    type: number
    sql: ${TABLE}.TipoCambio ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.Cantidad ;;
  }
  dimension: importe {
    type: number
    sql: ${TABLE}.Importe ;;
  }
  dimension: importe_mxn {
    type: number
    sql: ${TABLE}.ImporteMXN ;;
  }
  dimension: es_te_o_dt {
    description: "Define si un registro es Tiempo Extra o Descanso Trabajado"
    type: yesno
    group_label: "Filtros"
    label: "T.Extra + Des_Trab"
    sql: ${id_denominacion} IN ("1110", "1112", "1296", "1297") ;;
  }
  dimension: es_te {
    description: "Define si un registro es Tiempo Extra"
    type: yesno
    group_label: "Filtros"
    label: "T.Extra"
    sql: ${id_denominacion} IN ("1110", "1112") ;;
  }
  dimension: es_dt {
    description: "Define si un registro es Descanso Trabajado"
    type: yesno
    group_label: "Filtros"
    label: "Des_Trab"
    sql: ${id_denominacion} IN ("1296", "1297") ;;
  }
  dimension: es_total_salario {
    description: "Define si un registro es Salario"
    type: yesno
    group_label: "Filtros"
    label: "Salarios"
    sql: ${id_denominacion} IN ("1000") ;;
  }
  dimension: es_total_nomina {
    description: "Define si un registro es Pago de Nomina"
    type: yesno
    group_label: "Filtros"
    label: "T.Extra + Des_Trab"
    sql: ${id_denominacion} IN ("1110", "1112", "1296", "1297", "1000") ;;
  }
  measure: salario {
    type: sum
    sql: ${importe_mxn} ;;
    filters: [es_total_salario: "yes"]
  }
  measure: nomina {
    type: sum
    sql: ${importe_mxn} ;;
    filters: [es_total_nomina: "yes"]
  }
  measure: tiempo_extra {
    type: sum
    sql: ${importe_mxn} ;;
    filters: [es_te: "yes"]
  }
  measure: pct_tiempo_extra {
    label: "% Tiempo Extra"
    type: number
    sql: SAFE_DIVIDE(${tiempo_extra},${salario}) ;;
    value_format_name: percent_2
  }

  measure: pct_tiempo_extra_icon {
    label: "% Tiempo Extra_"
    type: number
    sql: ${pct_tiempo_extra} ;;
    value_format_name: percent_2
    html:
    {% if value < complemento_nomina.meta_te._value %}
    <p><img src="https://upload.wikimedia.org/wikipedia/commons/c/ca/Eo_circle_green_blank.svg" alt="" height="12" width="12">{{ rendered_value }}</p>
    {% elsif  value > complemento_nomina.meta_te._value %}
    <p><img src="https://upload.wikimedia.org/wikipedia/commons/f/f6/Eo_circle_red_blank.svg" alt="" height="12" width="12">{{ rendered_value }}</p>
    {% else %}
    {{rendered_value}}
    {% endif %} ;;
  }
  measure: tiempo_extra_mas_descanso{
    label: "TE + Des_Trab"
    type: sum
    sql: ${importe_mxn} ;;
    filters: [es_te_o_dt: "yes"]
  }
  measure: pct_te_dt {
    label: "% TE + Des_Trab"
    type: number
    sql: SAFE_DIVIDE(${tiempo_extra_mas_descanso},${salario}) ;;
    value_format_name: percent_2
  }
  measure: pct_te_dt_icon {
    label: "% TE + Des_Trab_"
    type: number
    sql: ${pct_te_dt} ;;
    value_format_name: percent_2
    html:
    {% if value < complemento_nomina.meta_te._value %}
    <p><img src="https://upload.wikimedia.org/wikipedia/commons/c/ca/Eo_circle_green_blank.svg" alt="" height="12" width="12">{{ rendered_value }}</p>
    {% elsif  value > complemento_nomina.meta_te._value %}
    <p><img src="https://upload.wikimedia.org/wikipedia/commons/f/f6/Eo_circle_red_blank.svg" alt="" height="12" width="12">{{ rendered_value }}</p>
    {% else %}
    {{rendered_value}}
    {% endif %} ;;
  }
  measure: tiempo_extra_mas_descanso_cantidad{
    label: "Cant. TE + Des_Trab"
    type: sum
    sql: ${cantidad} ;;
    filters: [es_te_o_dt: "yes"]
  }
  measure: meta_te {
    type: sum
    sql: ${cantidad} / 100 ;;
    value_format_name: percent_2
    filters: [id_denominacion: "8004"]
  }
}
