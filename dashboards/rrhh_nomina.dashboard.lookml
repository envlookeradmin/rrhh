---
- dashboard: rrhh_nomina
  title: RRHH Nomina
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 86Op5yhe86eGpEdrknFaCV
  layout: newspaper
  tabs:
  - name: ''
    label: ''
  elements:
  - title: Análisis por rubro 1
    name: Análisis por rubro 1
    model: ti_rrhh
    explore: fct_nomina
    type: looker_grid
    fields: [fct_nomina.tipo, fct_nomina.lyear, fct_nomina.year, fct_nomina.Variacion_cantidad,
      fct_nomina.Variacion, fct_nomina.cc]
    pivots: [fct_nomina.tipo]
    filters:
      fct_nomina.clasificacion_cc: Sueldos
    sorts: [fct_nomina.tipo, fct_nomina.lyear desc 0]
    limit: 500
    column_limit: 50
    total: true
    row_total: right
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    pinned_columns:
      fct_nomina.cc: left
    column_order: [fct_nomina.cc, 0 Percepción_fct_nomina.lyear, 0 Percepción_fct_nomina.year,
      0 Percepción_fct_nomina.Variacion_cantidad, 0 Percepción_fct_nomina.Variacion,
      1 Deducción_fct_nomina.lyear, 1 Deducción_fct_nomina.year, 1 Deducción_fct_nomina.Variacion_cantidad,
      1 Deducción_fct_nomina.Variacion, "$$$_row_total_$$$_fct_nomina.lyear", "$$$_row_total_$$$_fct_nomina.year",
      "$$$_row_total_$$$_fct_nomina.Variacion_cantidad", "$$$_row_total_$$$_fct_nomina.Variacion"]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      fct_nomina.concepto: Concepto
      fct_nomina.lyear: Año anterior
      fct_nomina.year: Año actual
      fct_nomina.Variacion_cantidad: Var. $
      fct_nomina.Variacion: Var. %
      fct_nomina.cantidad_lmonth: Mes anterior
      fct_nomina.cantidad_month: Mes actual
      fct_nomina.Variacion_cantidad_mensual: Var. $
      fct_nomina.Variacion_mensual: Var. %
      fct_nomina.cc: Concepto
    series_cell_visualizations:
      fct_nomina.lyear:
        is_active: false
    header_font_color: "#fff"
    header_background_color: "#b03427"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Subdivision: fct_nomina.subdivision
      Período: fct_nomina.date_filter
      Division Envases: filtros.division_envases
    row: 18
    col: 0
    width: 24
    height: 9
    tab_name: ''
  - title: Comparativo de Costo Mensual
    name: Comparativo de Costo Mensual
    model: ti_rrhh
    explore: fct_nomina
    type: looker_grid
    fields: [fct_nomina.subdivision, fct_nomina.unidad_organizativa, fct_nomina.importe_lmonth,
      fct_nomina.importe_month, fct_nomina.variacion_importe_month_lmonth, fct_nomina.variacion_perc_importe_month_lmonth]
    filters:
      fct_nomina.clasificacion_cc: "-NULL"
    sorts: [fct_nomina.subdivision]
    subtotals: [fct_nomina.subdivision]
    limit: 500
    column_limit: 50
    total: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      fct_nomina.importe_month: Sueldo mensual actual
      fct_nomina.Variacion_importe_mensual: "$"
      fct_nomina.Variacion_importe: "%"
      fct_nomina.organizacion: Unidad Organizativa
      fct_nomina.importe_lmonth: Sueldo mensual pasado
      fct_nomina.variacion_importe_month_lmonth: "$"
      fct_nomina.variacion_perc_importe_month_lmonth: "%"
    series_column_widths:
      fct_nomina.unidad_organizativa: 222
    series_cell_visualizations:
      fct_nomina.importe_lmonth:
        is_active: false
    header_font_color: "#fff"
    header_background_color: "#b03427"
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Subdivision: fct_nomina.subdivision
      Período: fct_nomina.date_filter
      Division Envases: filtros.division_envases
    row: 39
    col: 0
    width: 12
    height: 8
    tab_name: ''
  - title: Tiempo extra - Acumulado Mensual
    name: Tiempo extra - Acumulado Mensual
    model: ti_rrhh
    explore: fct_nomina
    type: looker_grid
    fields: [fct_nomina.importe_sueldos_month, fct_nomina.importe_tiempo_extra_month,
      fct_nomina.tiempo_extra_vs_sueldos_month, fct_nomina.subdivision]
    filters:
      fct_nomina.clasificacion_cc: Sueldos,Tiempo Extra
      fct_nomina.tiempo_extra_vs_sueldos_month: "-NULL"
    sorts: [fct_nomina.subdivision]
    limit: 500
    column_limit: 50
    total: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      fct_nomina.importe_sueldos_month: Sueldos
      fct_nomina.importe_tiempo_extra_month: Tiempo Extra
      fct_nomina.tiempo_extra_vs_sueldos: "% T.E. vs Salarios"
    series_cell_visualizations:
      fct_nomina.importe_sueldos_month:
        is_active: false
    header_font_color: "#fff"
    header_background_color: "#b03427"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Subdivision: fct_nomina.subdivision
      Período: fct_nomina.date_filter
      Division Envases: filtros.division_envases
    row: 39
    col: 12
    width: 12
    height: 8
    tab_name: ''
  - title: Reporte de Análisis de tiempo extra por persona
    name: Reporte de Análisis de tiempo extra por persona
    model: ti_rrhh
    explore: fct_nomina
    type: looker_grid
    fields: [fct_nomina.centro_costos, fct_nomina.codigopersonal, fct_nomina.importe_sueldos,
      fct_nomina.cantidad_tiempo_extra, fct_nomina.importe_tiempo_extra, fct_nomina.tiempo_extra_vs_sueldos]
    filters:
      fct_nomina.clasificacion_cc: "-NULL"
    sorts: [fct_nomina.centro_costos, fct_nomina.codigopersonal]
    subtotals: [fct_nomina.centro_costos]
    limit: 500
    column_limit: 50
    total: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      fct_nomina.importe_sueldos_month: Sueldos
      fct_nomina.importe_tiempo_extra_month: Tiempo Extra
      fct_nomina.tiempo_extra_vs_sueldos: "%"
      fct_nomina.codigopersonal: No.
      fct_nomina.importe_sueldos: Salario
      fct_nomina.cantidad_tiempo_extra: Horas
      fct_nomina.importe_tiempo_extra: Tiempo Extra
    series_cell_visualizations:
      fct_nomina.importe_sueldos_month:
        is_active: false
    series_collapsed:
      fct_nomina.centro_costos: true
    header_font_color: "#ffff"
    header_background_color: "#b03427"
    series_value_format:
      fct_nomina.codigopersonal: '0'
      fct_nomina.importe_sueldos:
        format_string: ''
      fct_nomina.cantidad_tiempo_extra:
        format_string: ''
      fct_nomina.importe_tiempo_extra:
        format_string: ''
    series_tooltip_options:
      fct_nomina.centro_costos:
        custom_tooltips_enabled: false
        style:
          font_size: 12
          font_family: Roboto, 'Noto Sans', 'Noto Sans JP', 'Noto Sans CJK KR', 'Noto
            Sans Arabic UI', 'Noto Sans Devanagari UI', 'Noto Sans Hebrew', 'Noto
            Sans Thai UI', Helvetica, Arial, sans-serif
          font_color: "#FFFFFF"
          background_color: "#262D33"
          border_radius: 4
          border_color: transparent
          box_shadow: none
          align: left
        template: |2-

                      <div class="section">
                      <div>Centro de Costos</div>
                      <div class="value">{{ fct_nomina.centro_costos }}</div>
                    </div>
                      <div class="section">
                      <div>Codigo de personal</div>
                      <div class="value">{{ fct_nomina.codigopersonal }}</div>
                    </div><div class="section">
                <div>Fct Nomina Centro de Costos</div>
                <div class="value">{{ fct_nomina.centro_costos }}</div>
              </div>
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Subdivision: fct_nomina.subdivision
      Período: fct_nomina.date_filter
      Division Envases: filtros.division_envases
    row: 47
    col: 0
    width: 12
    height: 8
    tab_name: ''
  - title: Comparativo Plantas / Subdivisiones
    name: Comparativo Plantas / Subdivisiones
    model: ti_rrhh
    explore: fct_nomina
    type: looker_grid
    fields: [fct_nomina.subdivision, fct_nomina.importe_lyear, fct_nomina.importe_year,
      fct_nomina.variacion_importe_year_lyear, fct_nomina.variacion_perc_importe_year_lyear]
    filters:
      fct_nomina.clasificacion_cc: "-NULL"
    sorts: [fct_nomina.importe_lyear desc 0]
    limit: 500
    column_limit: 50
    total: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      fct_nomina.planta: Subdivision
      fct_nomina.lyear: Costo Anterior
      fct_nomina.year: Costo Actual
      fct_nomina.Variacion_cantidad: "$"
      fct_nomina.Variacion: "%"
      fct_nomina.importe_lyear2: Hace dos años
      fct_nomina.importe_lyear: Año pasado
      fct_nomina.importe_year: Año actual
      fct_nomina.variacion_importe_lyear_lyear2: Var. $
      fct_nomina.variacion_perc_importe_lyear_lyear2: Var. %
      fct_nomina.variacion_importe_year_lyear: Var. $
      fct_nomina.variacion_perc_importe_year_lyear: Var. %
    series_cell_visualizations:
      fct_nomina.lyear:
        is_active: false
    header_font_color: "#fff"
    header_background_color: "#b03427"
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Subdivision: fct_nomina.subdivision
      Período: fct_nomina.date_filter
      Division Envases: filtros.division_envases
    row: 47
    col: 12
    width: 12
    height: 8
    tab_name: ''
  - title: Acumulado de Nomina Anual
    name: Acumulado de Nomina Anual
    model: ti_rrhh
    explore: fct_nomina
    type: looker_grid
    fields: [fct_nomina.importe_lyear, fct_nomina.importe_year, fct_nomina.variacion_importe_year_lyear,
      fct_nomina.variacion_perc_importe_year_lyear, fct_nomina.clasificacion_cc, fct_nomina.cc]
    filters:
      fct_nomina.clasificacion_cc: "-NULL"
    sorts: [fct_nomina.clasificacion_cc, fct_nomina.cc]
    subtotals: [fct_nomina.clasificacion_cc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      args:
      - fct_nomina.variacion_importe_year_lyear
      based_on: fct_nomina.variacion_importe_year_lyear
      calculation_type: percent_of_column_sum
      category: table_calculation
      label: Percent of Fct Nomina Variación $ anual (año actual vs año pasado)
      source_field: fct_nomina.variacion_importe_year_lyear
      table_calculation: percent_of_fct_nomina_variacion_anual_ano_actual_vs_ano_pasado
      value_format:
      value_format_name: percent_0
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      fct_nomina.concepto: Concepto
      fct_nomina.lyear: Año anterior
      fct_nomina.year: Año actual
      fct_nomina.Variacion_cantidad: Var. $
      fct_nomina.Variacion: Var. %
      fct_nomina.clasificacion_cc: Clasificación
      fct_nomina.cc: Concepto
      fct_nomina.importe_lyear: Año anterior
      fct_nomina.importe_year: Año actual
      fct_nomina.variacion_importe_year_lyear: Var. $
      fct_nomina.variacion_perc_importe_year_lyear: Var. %
      percent_of_fct_nomina_variacion_anual_ano_actual_vs_ano_pasado: Var. % Rel.
    series_column_widths:
      fct_nomina.cc: 212
    series_cell_visualizations:
      fct_nomina.lyear:
        is_active: false
    series_text_format:
      percent_of_fct_nomina_variacion_anual_ano_actual_vs_ano_pasado:
        align: right
    series_collapsed:
      fct_nomina.clasificacion_cc: true
    header_font_color: "#ffff"
    header_background_color: "#b03427"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: []
    listen:
      Subdivision: fct_nomina.subdivision
      Período: fct_nomina.date_filter
      Division Envases: filtros.division_envases
    row: 0
    col: 0
    width: 24
    height: 6
    tab_name: ''
  - title: Acumulado de Nomina Mensual
    name: Acumulado de Nomina Mensual
    model: ti_rrhh
    explore: fct_nomina
    type: looker_grid
    fields: [fct_nomina.clasificacion_cc, fct_nomina.cc, fct_nomina.importe_lmonth2,
      fct_nomina.importe_lmonth, fct_nomina.importe_month, fct_nomina.variacion_importe_lmonth_lmonth2,
      fct_nomina.variacion_perc_importe_lmonth_lmonth2, fct_nomina.variacion_importe_month_lmonth,
      fct_nomina.variacion_perc_importe_month_lmonth]
    filters:
      fct_nomina.clasificacion_cc: "-NULL"
    sorts: [fct_nomina.clasificacion_cc, fct_nomina.cc]
    subtotals: [fct_nomina.clasificacion_cc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: table_calculation
      label: Percent of Fct Nomina Variacion $ mensual (mes actual vs el año pasado)
      value_format:
      value_format_name: percent_0
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_fct_nomina_variacion_mensual_mes_actual_vs_el_ano_pasado
      args:
      - fct_nomina.variacion_importe_month_lmonth
      _kind_hint: measure
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      fct_nomina.concepto: Concepto
      fct_nomina.lyear: Año anterior
      fct_nomina.year: Año actual
      fct_nomina.Variacion_cantidad: Var. $
      fct_nomina.Variacion: Var. %
      fct_nomina.cantidad_lmonth: Mes anterior
      fct_nomina.cantidad_month: Mes actual
      fct_nomina.Variacion_cantidad_mensual: Var. $
      fct_nomina.Variacion_mensual: Var. %
      fct_nomina.clasificacion_cc: Clasificación
      fct_nomina.variacion_perc_importe_month_lmonth: Var. %
      fct_nomina.variacion_importe_month_lmonth: Var. $
      fct_nomina.variacion_perc_importe_lmonth_lmonth2: Var. %
      fct_nomina.variacion_importe_lmonth_lmonth2: Var. $
      fct_nomina.importe_month: Año actual
      fct_nomina.importe_lyear: Año pasado
      fct_nomina.importe_lmonth: Año pasado
      fct_nomina.cc: Concepto
      percent_of_fct_nomina_variacion_mensual_mes_actual_vs_el_ano_pasado: Var. %
        Rel.
      fct_nomina.importe_lmonth2: Hace 2 años
    series_cell_visualizations:
      fct_nomina.lyear:
        is_active: false
    series_text_format:
      percent_of_fct_nomina_variacion_mensual_mes_actual_vs_el_ano_pasado:
        align: right
    series_collapsed:
      fct_nomina.clasificacion_cc: true
    header_font_color: "#fff"
    header_background_color: "#b03427"
    series_value_format:
      fct_nomina.importe_lmonth:
        format_string: "$#,##0.00"
      fct_nomina.importe_month:
        format_string: "$#,##0.00"
      fct_nomina.variacion_importe_lmonth_lmonth2:
        format_string: "$#,##0.00"
      fct_nomina.variacion_perc_importe_lmonth_lmonth2:
        format_string: 0.00\%
      fct_nomina.variacion_importe_month_lmonth:
        format_string: "$#,##0.00"
      fct_nomina.variacion_perc_importe_month_lmonth:
        format_string: 0.00\%
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Subdivision: fct_nomina.subdivision
      Período: fct_nomina.date_filter
      Division Envases: filtros.division_envases
    row: 6
    col: 0
    width: 24
    height: 6
    tab_name: ''
  - title: Análisis Anual - Otras Percepciones
    name: Análisis Anual - Otras Percepciones
    model: ti_rrhh
    explore: fct_nomina
    type: looker_grid
    fields: [fct_nomina.cc, fct_nomina.importe_lyear, fct_nomina.importe_year, fct_nomina.variacion_importe_year_lyear,
      fct_nomina.variacion_perc_importe_year_lyear]
    filters:
      fct_nomina.clasificacion_cc: Otras Percepciones
    sorts: [fct_nomina.cc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: table_calculation
      label: Percent of Fct Nomina Variacion Cantidad
      value_format:
      value_format_name: percent_0
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_fct_nomina_variacion_cantidad
      args:
      - fct_nomina.variacion_importe_year_lyear
      _kind_hint: measure
      _type_hint: number
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", fct_nomina.concepto, 0 Percepción_fct_nomina.lyear,
      0 Percepción_fct_nomina.year, 0 Percepción_fct_nomina.Variacion_cantidad, 0
        Percepción_fct_nomina.Variacion, 1 Deducción_fct_nomina.lyear, 1 Deducción_fct_nomina.year,
      1 Deducción_fct_nomina.Variacion_cantidad, 1 Deducción_fct_nomina.Variacion,
      "$$$_row_total_$$$_fct_nomina.lyear", "$$$_row_total_$$$_fct_nomina.year", "$$$_row_total_$$$_fct_nomina.Variacion_cantidad",
      "$$$_row_total_$$$_fct_nomina.Variacion"]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      fct_nomina.concepto: Concepto
      fct_nomina.lyear: Año anterior
      fct_nomina.year: Año actual
      fct_nomina.Variacion_cantidad: Var. $
      fct_nomina.Variacion: Var. %
      fct_nomina.cantidad_lmonth: Mes anterior
      fct_nomina.cantidad_month: Mes actual
      fct_nomina.Variacion_cantidad_mensual: Var. $
      fct_nomina.Variacion_mensual: Var. %
      fct_nomina.cc: Concepto
      percent_of_fct_nomina_variacion_cantidad: Var. % Rel.
      fct_nomina.importe_lyear: Año pasado
      fct_nomina.importe_year: Año actual
      fct_nomina.variacion_importe_year_lyear: Var. $
      fct_nomina.variacion_perc_importe_year_lyear: Var. %
    series_cell_visualizations:
      fct_nomina.lyear:
        is_active: false
    series_text_format:
      percent_of_fct_nomina_variacion_cantidad:
        align: right
    header_font_color: "#ffff"
    header_background_color: "#b03427"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Subdivision: fct_nomina.subdivision
      Período: fct_nomina.date_filter
      Division Envases: filtros.division_envases
    row: 27
    col: 0
    width: 24
    height: 6
    tab_name: ''
  - title: Comparativo Subdivisiones con desglose de rubros de pago
    name: Comparativo Subdivisiones con desglose de rubros de pago
    model: ti_rrhh
    explore: fct_nomina
    type: looker_grid
    fields: [fct_nomina.subdivision, fct_nomina.clasificacion_cc, fct_nomina.importe_lyear2,
      fct_nomina.importe_lyear, fct_nomina.importe_year, fct_nomina.variacion_importe_year_lyear,
      fct_nomina.variacion_perc_importe_year_lyear, fct_nomina.cc]
    filters:
      fct_nomina.clasificacion_cc: "-NULL"
    sorts: [fct_nomina.subdivision, fct_nomina.clasificacion_cc, fct_nomina.cc]
    subtotals: [fct_nomina.subdivision, fct_nomina.clasificacion_cc]
    limit: 2500
    column_limit: 50
    total: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      fct_nomina.planta: Subdivision
      fct_nomina.lyear: Costo Anterior
      fct_nomina.year: Costo Actual
      fct_nomina.Variacion_cantidad: "$"
      fct_nomina.Variacion: "%"
      fct_nomina.clasificacion_cc: Clasificación
      fct_nomina.cc: Concepto
      fct_nomina.importe_lyear2: Hace dos años
      fct_nomina.importe_lyear: Año pasado
      fct_nomina.importe_year: Año actual
      fct_nomina.variacion_importe_year_lyear: Var. $
      fct_nomina.variacion_perc_importe_year_lyear: Var. %
    series_cell_visualizations:
      fct_nomina.lyear:
        is_active: false
    series_collapsed:
      fct_nomina.planta: true
      fct_nomina.subdivision: true
      fct_nomina.clasificacion_cc: true
    header_font_color: "#fff"
    header_background_color: "#b03427"
    series_value_format:
      fct_nomina.importe_lyear2:
        format_string: "$#,##0.00"
      fct_nomina.importe_lyear:
        format_string: "$#,##0.00"
      fct_nomina.importe_year:
        format_string: "$#,##0.00"
      fct_nomina.variacion_importe_year_lyear:
        format_string: "$#,##0.00"
      fct_nomina.variacion_perc_importe_year_lyear:
        format_string: 0.00\%
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Subdivision: fct_nomina.subdivision
      Período: fct_nomina.date_filter
      Division Envases: filtros.division_envases
    row: 55
    col: 0
    width: 24
    height: 7
    tab_name: ''
  - title: Análisis Tiempo Extra Acumulado Anual
    name: Análisis Tiempo Extra Acumulado Anual
    model: ti_rrhh
    explore: fct_nomina
    type: looker_grid
    fields: [fct_nomina.subdivision, fct_nomina.centro_costos, fct_nomina.unidad_organizativa,
      fct_nomina.importe_year, fct_nomina.cantidad_year]
    filters:
      fct_nomina.clasificacion_cc: Tiempo Extra
      fct_nomina.date_filter: last day
      filtros.division_envases: ALG,ALU,CORP,PET
      fct_nomina.subdivision: ''
    sorts: [fct_nomina.subdivision, fct_nomina.centro_costos, fct_nomina.importe_year
        desc]
    subtotals: [fct_nomina.clasificacion_cc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: table_calculation
      label: Percent of Fct Nomina Variacion $ mensual (mes actual vs el año pasado)
      value_format:
      value_format_name: percent_0
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_fct_nomina_variacion_mensual_mes_actual_vs_el_ano_pasado
      args:
      - fct_nomina.variacion_importe_month_lmonth
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - fct_nomina.cantidad_year
      based_on: fct_nomina.cantidad_year
      calculation_type: percent_of_column_sum
      category: table_calculation
      label: Percent of Fct Nomina Cantidad del año actual
      source_field: fct_nomina.cantidad_year
      table_calculation: percent_of_fct_nomina_cantidad_del_ano_actual
      value_format:
      value_format_name: percent_0
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", fct_nomina.subdivision, fct_nomina.centro_costos,
      fct_nomina.unidad_organizativa, fct_nomina.cantidad_year, fct_nomina.importe_year]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      fct_nomina.concepto: Concepto
      fct_nomina.lyear: Año anterior
      fct_nomina.year: Año actual
      fct_nomina.Variacion_cantidad: Var. $
      fct_nomina.Variacion: Var. %
      fct_nomina.cantidad_lmonth: Mes anterior
      fct_nomina.cantidad_month: Mes actual
      fct_nomina.Variacion_cantidad_mensual: Var. $
      fct_nomina.Variacion_mensual: Var. %
      fct_nomina.clasificacion_cc: Clasificación
      fct_nomina.variacion_perc_importe_month_lmonth: Var. %
      fct_nomina.variacion_importe_month_lmonth: Var. $
      fct_nomina.variacion_perc_importe_lmonth_lmonth2: Var. %
      fct_nomina.variacion_importe_lmonth_lmonth2: Var. $
      fct_nomina.importe_month: Año actual
      fct_nomina.importe_lyear: Año pasado
      fct_nomina.importe_lmonth: Año pasado
      fct_nomina.cc: Concepto
      percent_of_fct_nomina_variacion_mensual_mes_actual_vs_el_ano_pasado: Var. %
        Rel.
      fct_nomina.importe_lmonth2: Hace 2 años
      fct_nomina.importe_year: Importe
      fct_nomina.cantidad_year: Cant. Hrs.
      percent_of_fct_nomina_cantidad_del_ano_actual: Porcentaje
    series_cell_visualizations:
      fct_nomina.lyear:
        is_active: false
    series_text_format:
      percent_of_fct_nomina_cantidad_del_ano_actual:
        align: right
    series_collapsed:
      fct_nomina.clasificacion_cc: true
      fct_nomina.subdivision: true
      fct_nomina.centro_costos: true
    header_font_color: "#fff"
    header_background_color: "#b03427"
    series_value_format:
      fct_nomina.importe_year:
        format_string: "$#,##0.00"
      fct_nomina.cantidad_year:
        format_string: "#,##0.00"
      percent_of_fct_nomina_cantidad_del_ano_actual: "#,##0.00%"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Subdivision: fct_nomina.subdivision
      Período: fct_nomina.date_filter
      Division Envases: filtros.division_envases
    row: 12
    col: 0
    width: 24
    height: 6
    tab_name: ''
  - title: Comparativo HC
    name: Comparativo HC
    model: ti_rrhh
    explore: fct_rh_2
    type: looker_grid
    fields: [fct_rh_2.subdivision, fct_rh_2.unidad_organizativa, fct_rh_2.total_salario,
      fct_rh_2.head_count, fct_rh_2.periodo_year]
    pivots: [fct_rh_2.periodo_year]
    fill_fields: [fct_rh_2.periodo_year]
    sorts: [fct_rh_2.subdivision, fct_rh_2.periodo_year]
    subtotals: [fct_rh_2.subdivision]
    limit: 1500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: table_calculation
      expression: pivot_index(${fct_rh_2.total_salario},3) - pivot_index(${fct_rh_2.total_salario},2)
      label: Var. Sueldo 26 vs 25
      value_format:
      value_format_name: usd
      _kind_hint: supermeasure
      table_calculation: var_sueldo_26_vs_25
      _type_hint: number
      is_disabled: false
    - category: table_calculation
      expression: pivot_index(${fct_rh_2.total_salario},2) - pivot_index(${fct_rh_2.total_salario},1)
      label: Var. Sueldo 25 vs 24
      value_format:
      value_format_name: usd
      _kind_hint: supermeasure
      table_calculation: var_sueldo_25_vs_24
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: pivot_index(${fct_rh_2.head_count},2) - pivot_index(${fct_rh_2.head_count},1)
      label: Var. HC 25 vs 24
      value_format:
      value_format_name: decimal_0
      _kind_hint: supermeasure
      table_calculation: var_hc_25_vs_24
      _type_hint: number
      is_disabled: false
    - category: table_calculation
      expression: pivot_index(${fct_rh_2.head_count},3) - pivot_index(${fct_rh_2.head_count},2)
      label: Var. HC 26 vs 25
      value_format:
      value_format_name: decimal_0
      _kind_hint: supermeasure
      table_calculation: var_hc_26_vs_25
      _type_hint: number
      is_disabled: false
    - category: table_calculation
      expression: "(pivot_index(${fct_rh_2.head_count},2) - pivot_index(${fct_rh_2.head_count},1))\
        \ / pivot_index(${fct_rh_2.head_count},1)"
      label: "% 25 vs 24"
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      table_calculation: vs_24
      _type_hint: number
      is_disabled: false
    - category: table_calculation
      expression: "(pivot_index(${fct_rh_2.head_count},3) - pivot_index(${fct_rh_2.head_count},2))\
        \ / pivot_index(${fct_rh_2.head_count},2)"
      label: "% 26 vs 25"
      value_format:
      value_format_name: percent_2
      _kind_hint: supermeasure
      table_calculation: vs_25
      _type_hint: number
      is_disabled: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
    show_sql_query_menu_options: false
    column_order: [fct_rh_2.subdivision, fct_rh_2.unidad_organizativa, 2024_fct_rh_2.total_salario,
      2024_fct_rh_2.head_count, 2025_fct_rh_2.total_salario, 2025_fct_rh_2.head_count,
      2026_fct_rh_2.total_salario, 2026_fct_rh_2.head_count, var_sueldo_25_vs_24,
      var_hc_25_vs_24, vs_24, var_sueldo_26_vs_25, var_hc_26_vs_25, vs_25]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 100
    series_labels:
      fct_rh_2.total_salario: Sueldo Mensual
      fct_rh_2.head_count: HC
      vs_24: "%"
      vs_25: "%"
    series_cell_visualizations:
      fct_rh_2.head_count:
        is_active: true
    table_enable_pagination: false
    table_page_size_options: 20, 50, 100
    series_collapsed:
      fct_rh_2.subdivision: true
    table_column_hover_highlight_enable: false
    table_show_headers: true
    header_font_color: "#fff"
    header_background_color: "#b03427"
    header_font_bold: false
    header_font_italic: false
    cell_font_size: '12'
    cell_font_weight: ''
    cell_font_style: ''
    cell_text_alignment: ''
    table_custom_border_enable: false
    table_custom_border_width:
    table_custom_border_color: "#dde2eb"
    table_custom_border_style: solid
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Período: fct_rh_2.date_filter
      Division Envases: fct_rh_2.division_envases
    row: 33
    col: 0
    width: 24
    height: 6
    tab_name: ''
  filters:
  - name: Período
    title: Período
    type: field_filter
    default_value: last day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: ti_rrhh
    explore: fct_nomina
    listens_to_filters: []
    field: fct_nomina.date_filter
  - name: Division Envases
    title: Division Envases
    type: field_filter
    default_value: ALG,ALU,CORP,PET
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: ti_rrhh
    explore: fct_nomina
    listens_to_filters: []
    field: filtros.division_envases
  - name: Subdivision
    title: Subdivision
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: ti_rrhh
    explore: fct_nomina
    listens_to_filters: [Division Envases]
    field: fct_nomina.subdivision
