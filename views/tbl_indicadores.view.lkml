include: "parametros.view"
view: indicadores {
  sql_table_name: `RPT_CORP.tbl_indicadores` ;;
  extends: [parametros]
  dimension: centro_costos {
    type: string
    sql: ${TABLE}.CentroCostos ;;
  }
  dimension: clase_medida {
    type: string
    sql: ${TABLE}.ClaseMedida ;;
  }
  dimension: division {
    type: string
    sql: ${TABLE}.Division ;;
  }
  dimension: division_envases {
    type: string
    sql: ${TABLE}.DivisionEnvases ;;
  }
  dimension: estatus {
    type: string
    sql: ${TABLE}.Estatus ;;
  }
  dimension: medida {
    hidden: yes
    type: string
    sql: ${TABLE}.Medida ;;
  }
  dimension: motivo_medida {
    type: string
    sql: ${TABLE}.MotivoMedida ;;
  }
  dimension: posicion {
    type: string
    sql: ${TABLE}.Posicion ;;
  }
  dimension: sexo {
    type: string
    sql: ${TABLE}.Sexo ;;
  }
  dimension: sociedad {
    type: string
    sql: ${TABLE}.Sociedad ;;
  }
  dimension: subdivision {
    type: string
    sql: ${TABLE}.Subdivision ;;
  }
  dimension: unidad_organizativa {
    type: string
    sql: ${TABLE}.UnidadOrganizativa ;;
  }
  dimension: valor {
    hidden: yes
    type: number
    sql: ${TABLE}.Valor ;;
  }
  # MEDIDAS DE HEAD COUNT
  measure: head_count{
    label: "Head Count"
    group_label: "Head Count"
    type: sum
    sql: ${valor} ;;
    filters: [medida: "Head Count", es_anio_seleccionado: "yes"]
  }
  measure: head_count_ly{
    label: "Head Count AA"
    group_label: "Head Count"
    type: sum
    sql: ${valor} ;;
    filters: [medida: "Head Count", es_ly: "yes"]
  }
  measure: head_count_mes{
    label: "Head Count Mes"
    group_label: "Head Count"
    type: sum
    sql: ${valor} ;;
    filters: [medida: "Head Count", es_mes_seleccionado: "yes"]
  }
  measure: head_count_mes_ly{
    label: "Head Count Mes AA"
    group_label: "Head Count"
    type: sum
    sql: ${valor} ;;
    filters: [medida: "Head Count", es_mes_ly: "yes"]
  }
  measure: hc_diferencia_ly {
    label: "Dif vs AA"
    group_label: "Head Count"
    sql: ${head_count} - ${head_count_ly}  ;;
  }
  measure: hc_diferencia_mes_ly {
    label: "Dif vs mes AA"
    group_label: "Head Count"
    sql: ${head_count_mes} - ${head_count_mes_ly} ;;
  }
  measure: hc_pct_vs_ly {
    label: "HC % vs AA"
    group_label: "Head Count"
    sql: SAFE_DIVIDE(${hc_diferencia_ly},${head_count_ly}) ;;
    value_format_name: percent_2
  }
  measure: hc_pct_vs_mes_ly {
    label: "HC % vs Mes AA"
    group_label: "Head Count"
    sql: SAFE_DIVIDE(${hc_diferencia_mes_ly},${head_count_mes_ly}) ;;
    value_format_name: percent_2
  }
  #MEDIDAS DE BAJAS
  measure: bajas{
    label: "Bajas"
    group_label: "Bajas y Rotacion"
    type: sum
    sql: ${valor} ;;
    filters: [medida: "Baja", es_anio_seleccionado: "yes"]
  }
  measure: bajas_ly{
    label: "Bajas AA"
    group_label: "Bajas y Rotacion"
    type: sum
    sql: ${valor} ;;
    filters: [medida: "Baja", es_ly: "yes"]
  }
  measure: bajas_mes{
    label: "Bajas Mes"
    group_label: "Bajas y Rotacion"
    type: sum
    sql: ${valor} ;;
    filters: [medida: "Baja", es_mes_seleccionado: "yes"]
  }
  measure: bajas_mes_ly{
    label: "Bajas Mes AA"
    group_label: "Bajas y Rotacion"
    type: sum
    sql: ${valor} ;;
    filters: [medida: "Baja", es_mes_ly: "yes"]
  }
  measure: bj_diferencia_ly {
    label: "Bajas Dif vs AA"
    group_label: "Bajas y Rotacion"
    sql: ${bajas} - ${bajas_ly}  ;;
  }
  measure: bj_diferencia_mes_ly {
    label: "Bajas Dif vs mes AA"
    group_label: "Bajas y Rotacion"
    sql: ${bajas_mes} - ${bajas_mes_ly} ;;
  }
  measure: bj_pct_vs_ly {
    label: "Bajas % vs AA"
    group_label: "Bajas y Rotacion"
    sql: SAFE_DIVIDE(${bj_diferencia_ly},${bajas_ly}) ;;
    value_format_name: percent_2
  }
  measure: bj_pct_vs_mes_ly {
    label: "Bajas % vs Mes AA"
    group_label: "Bajas y Rotacion"
    sql: SAFE_DIVIDE(${bj_diferencia_mes_ly},${bajas_mes_ly}) ;;
    value_format_name: percent_2
  }
  measure: rotacion {
    label: "Rotacion"
    group_label: "Bajas y Rotacion"
    type: number
    sql: SAFE_DIVIDE(${bajas},${head_count}) ;;
    value_format_name: percent_2
  }
  measure: rotacion_mes {
    label: "Rotacion Mes"
    group_label: "Bajas y Rotacion"
    type: number
    sql: SAFE_DIVIDE(${bajas_mes},${head_count_mes}) ;;
    value_format_name: percent_2
  }
  #MEDIDAS DE AUSENTISMO
  measure: ausentismo{
    label: "Ausentismo"
    group_label: "Ausentismo"
    type: sum
    sql: ${valor} ;;
    filters: [medida: "Ausentismo", es_anio_seleccionado: "yes"]
  }
  measure: ausentismo_ly{
    label: "Ausentismo AA"
    group_label: "Ausentismo"
    type: sum
    sql: ${valor} ;;
    filters: [medida: "Ausentismo", es_ly: "yes"]
  }
  measure: ausentismo_mes{
    label: "Ausentismo Mes"
    group_label: "Ausentismo"
    type: sum
    sql: ${valor} ;;
    filters: [medida: "Ausentismo", es_mes_seleccionado: "yes"]
  }
  measure: ausentismo_mes_ly{
    label: "Ausentismo Mes AA"
    group_label: "Ausentismo"
    type: sum
    sql: ${valor} ;;
    filters: [medida: "Ausentismo", es_mes_ly: "yes"]
  }
  measure: au_diferencia_ly {
    label: "AU Dif vs AA"
    group_label: "Ausentismo"
    sql: ${ausentismo} - ${ausentismo_ly}  ;;
  }
  measure: au_diferencia_mes_ly {
    label: "AU Dif vs mes AA"
    group_label: "Ausentismo"
    sql: ${ausentismo_mes} - ${ausentismo_mes_ly} ;;
  }
  measure: au_pct_vs_ly {
    label: "AU % vs AA"
    group_label: "Ausentismo"
    sql: SAFE_DIVIDE(${au_diferencia_ly},${ausentismo_ly}) ;;
    value_format_name: percent_2
  }
  measure: au_pct_vs_mes_ly {
    label: "AU % vs Mes AA"
    group_label: "Ausentismo"
    sql: SAFE_DIVIDE(${au_diferencia_mes_ly},${ausentismo_mes_ly}) ;;
    value_format_name: percent_2
  }
}
