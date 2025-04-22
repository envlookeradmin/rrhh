view: vw_complemento_capacitacion_vacantes {
  sql_table_name: `RPT_CORP.tbl_complemento_capacitacion_vacantes` ;;

  dimension: sociedad {
    type: string
    sql: ${TABLE}.Sociedad ;;
    }

    dimension: area_personal {
      type: string
      sql: ${TABLE}.AreaPersonal ;;
    }

    dimension: centro {
      type: string
      sql: ${TABLE}.CENTRO ;;
    }

    dimension: codigo_pais {
      type: string
      sql: ${TABLE}.CodigoPais ;;
    }

    dimension_group: periodo {
      type: time
      timeframes: [raw, date, week, month, month_name, quarter, year]
      convert_tz: no
      datatype: date
      sql: ${TABLE}.PERIODO ;;
    }

    dimension: division_envases {
      type: string
      sql: ${TABLE}.DivisionEnvases ;;
    }

    dimension: denominacion {
      type: string
      sql: ${TABLE}.Concepto ;;
    }

    dimension: cantidad {
      type: number
      hidden: yes
      sql: ${TABLE}.Cantidad ;;
    }

    measure: horas_capacitacion {
      type: sum
      sql: ${cantidad} ;;
      filters: [denominacion: "Capacitación"]
      value_format_name: decimal_2
    }

    measure: activos_mes {
      type: sum
      sql: ${cantidad} ;;
      filters: [denominacion: "Activos"]
    }

    measure: horas_hombre_capacitacion {
      type: number
      sql: SAFE_DIVIDE(${horas_capacitacion}, ${activos_mes}) ;;
      value_format_name: "decimal_2"
      html:
          {% if value < vw_complemento_capacitacion_vacantes.meta_horas_hombre._value %}
          <p><img src="https://upload.wikimedia.org/wikipedia/commons/f/f6/Eo_circle_red_blank.svg" alt="" height="12" width="12">{{ rendered_value }}</p>
          {% elsif  value >= vw_complemento_capacitacion_vacantes.meta_horas_hombre._value %}
          <p><img src="https://upload.wikimedia.org/wikipedia/commons/c/ca/Eo_circle_green_blank.svg" alt="" height="12" width="12">{{ rendered_value }}</p>
          {% else %}
          {{rendered_value}}
          {% endif %} ;;
    }
# Cantidad solo cuando denominacion = 'Capacitación'
    measure: horas_capacitacion_real {
      label: "Cant/Hrs (Capacitación)"
      type: number
      sql: ${horas_capacitacion} ;;
    }

# Cantidad solo cuando denominacion = 'Meta Horas Capacitacion'
    measure: meta_horas_hombre {
      label: "# Meta Hrs Hombre"
      type: sum
      sql: ${cantidad} ;;
      filters: [denominacion: "Meta Horas Capacitacion"]
      value_format_name: decimal_2
    }

    measure: meta_vacantes_pct {
      label: "Meta Vacantes (%)"
      type: average
      sql: ${cantidad} / 100 ;;
      filters: [denominacion: "Meta Vacantes"]
      value_format_name: "percent_2"
    }

# Vacantes: Total Vacantes
    measure: total_vacantes {
      label: "Total Vacantes"
      type: sum
      sql: ${cantidad} ;;
      filters: [denominacion: "Total Vacantes"]
    }

# Vacantes: Externas Cubiertas
    measure: vacantes_externas_cubiertas {
      label: "Vacantes Externas Cubiertas"
      type: sum
      sql: ${cantidad} ;;
      filters: [denominacion: "Vacantes Externas Cubiertas"]
    }

# Vacantes: Internas Cubiertas
    measure: vacantes_internas_cubiertas {
      label: "Vacantes Internas Cubiertas"
      type: sum
      sql: ${cantidad} ;;
      filters: [denominacion: "Vacantes Interno Cubiertas"]
    }

    measure: pct_vacantes_cubiertas {
      label: "% Vacantes Cubiertas"
      type: number
      sql: SAFE_DIVIDE(
          ${vacantes_externas_cubiertas} + ${vacantes_internas_cubiertas},
          NULLIF(${total_vacantes}, 0)
        ) ;;
      value_format_name: "percent_2"
    }

    measure: promociones {
      type: sum
      sql: ${cantidad} ;;
      filters: [denominacion: "Promociones"]
    }

    measure: plantilla_autorizada {
      type: sum
      sql: ${cantidad} ;;
      filters: [denominacion: "Plantilla Autorizada"]
    }

    measure: crecimiento {
      type: number
      sql: SAFE_DIVIDE(${promociones},${activos_mes}) ;;
      value_format_name: percent_2
    }
    measure: pct_vacantes {
      label: "% Vacantes"
      type: number
      sql: SAFE_DIVIDE(${total_vacantes},${activos_mes}) ;;
      value_format_name: percent_2
      html:
          {% if value >= vw_complemento_capacitacion_vacantes.meta_vacantes_pct._value %}
          <p><img src="https://upload.wikimedia.org/wikipedia/commons/f/f6/Eo_circle_red_blank.svg" alt="" height="12" width="12">{{ rendered_value }}</p>
          {% elsif  value < vw_complemento_capacitacion_vacantes.meta_vacantes_pct._value %}
          <p><img src="https://upload.wikimedia.org/wikipedia/commons/c/ca/Eo_circle_green_blank.svg" alt="" height="12" width="12">{{ rendered_value }}</p>
          {% else %}
          {{rendered_value}}
          {% endif %} ;;
    }
  }
