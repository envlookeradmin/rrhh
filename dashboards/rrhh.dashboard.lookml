---
- dashboard: rrhh
  title: RRHH
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: YFC6wObrT1CNg8jqU1zfnZ
  elements:
  - title: Analisis por rubro 1
    name: Analisis por rubro 1
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
      Período: fct_nomina.date_filter
      División de Envases: fct_nomina.division_envases
    row: 20
    col: 0
    width: 24
    height: 9
  - title: Analisis de plantilla
    name: Analisis de plantilla
    model: ti_rrhh
    explore: fct_nomina
    type: looker_grid
    fields: [fct_nomina.importe_lmonth, fct_nomina.importe_month, fct_nomina.variacion_importe_month_lmonth,
      fct_nomina.variacion_perc_importe_month_lmonth, fct_nomina.unidad_organizativa]
    filters: {}
    sorts: [fct_nomina.unidad_organizativa]
    limit: 500
    column_limit: 50
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
      Período: fct_nomina.date_filter
      División de Envases: fct_nomina.division_envases
    row: 41
    col: 0
    width: 12
    height: 8
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
      Período: fct_nomina.date_filter
      División de Envases: fct_nomina.division_envases
    row: 41
    col: 12
    width: 12
    height: 8
  - title: Reporte de Analisis de tiempo extra por persona
    name: Reporte de Analisis de tiempo extra por persona
    model: ti_rrhh
    explore: fct_nomina
    type: looker_grid
    fields: [fct_nomina.codigopersonal, fct_nomina.importe_sueldos, fct_nomina.cantidad_tiempo_extra,
      fct_nomina.importe_tiempo_extra, fct_nomina.tiempo_extra_vs_sueldos]
    filters:
      fct_nomina.fecha_inicio_week: 2022/02/28
    sorts: [fct_nomina.codigopersonal desc]
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
    header_font_color: "#ffff"
    header_background_color: "#b03427"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Período: fct_nomina.date_filter
      División de Envases: fct_nomina.division_envases
    row: 49
    col: 0
    width: 12
    height: 8
  - title: Comparativo Plantas / Subdivisiones
    name: Comparativo Plantas / Subdivisiones
    model: ti_rrhh
    explore: fct_nomina
    type: looker_grid
    fields: [fct_nomina.subdivision, fct_nomina.importe_lyear2, fct_nomina.importe_lyear,
      fct_nomina.importe_year, fct_nomina.variacion_importe_lyear_lyear2, fct_nomina.variacion_perc_importe_lyear_lyear2,
      fct_nomina.variacion_importe_year_lyear, fct_nomina.variacion_perc_importe_year_lyear]
    filters: {}
    sorts: [fct_nomina.importe_lyear2 desc 0]
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
      Período: fct_nomina.date_filter
      División de Envases: fct_nomina.division_envases
    row: 49
    col: 12
    width: 12
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"border-radius: 5px; padding: 5px 10px; background: #5e2129;\
      \ height: 60px; color: red;\">\n\t<nav style=\"font-size: 18px;\">\n\t\t<img\
      \ style=\"color: #efefef; padding: 5px 15px; float: left; height: 40px;\" src=\"\
      https://wwwstatic.lookercdn.com/logos/looker_all_white.svg\"/>\n\t\t<a style=\"\
      color: #efefef; padding: 5px 15px; float: left; line-height: 40px; font-weight:\
      \ bold;\" href=\"https://envases.cloud.looker.com/dashboards/9\"></a>\n\t\t\
      <a style=\"color: #efefef; padding: 5px 15px; float: left; line-height: 40px;\
      \ font-weight: bold;\" href=\"https://envases.cloud.looker.com/dashboards/11\"\
      ></a>\n\t\t\n\t</nav>\n</div>"
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Analisis Tiempo Extra Acumulado
    name: Analisis Tiempo Extra Acumulado
    model: ti_rrhh
    explore: fct_rh
    type: looker_grid
    fields: [fct_rh.codigo_personal, fct_rh.inicio_date, fct_rh.centro_costos, fct_rh.sociedad,
      fct_rh.unidad_organizativa, fct_rh.posicion, fct_rh.year, fct_rh.Importe]
    filters:
      fct_rh.Importe: ">0"
      fct_rh.sociedad: ENVASES UNIVERSALES DE MXCuautitlán
    sorts: [fct_rh.codigo_personal]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: Percent of Fct Rh Importe
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_fct_rh_importe
      args:
      - fct_rh.Importe
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
    column_order: ["$$$_row_numbers_$$$", fct_rh.codigo_personal, fct_rh.inicio_date,
      fct_rh.centro_costos, fct_rh.sociedad, fct_rh.unidad_organizativa, fct_rh.posicion,
      fct_rh.year, fct_rh.Importe]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      fct_rh.year: Cantidad
      percent_of_fct_rh_importe: Porcentaje
    series_cell_visualizations:
      fct_rh.year:
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
    series_column_widths:
      fct_rh.sociedad: 293
    listen:
      Período: fct_rh.date_filter
    row: 14
    col: 0
    width: 24
    height: 6
  - title: Comparativo
    name: Comparativo
    model: ti_rrhh
    explore: fct_rh
    type: looker_grid
    fields: [fct_rh.subdivision, fct_rh.CONTEO_TODO, fct_rh.Importe_TODO, fct_rh.inicio_year,
      fct_rh.centro_costos]
    pivots: [fct_rh.inicio_year]
    fill_fields: [fct_rh.inicio_year]
    filters:
      fct_rh.inicio_year: 2022/01/01 to 2025/02/16
    sorts: [fct_rh.inicio_year, fct_rh.subdivision]
    subtotals: [fct_rh.subdivision]
    limit: 500
    column_limit: 50
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
    column_order: [fct_rh.subdivision, fct_rh.centro_costos, 2022_fct_rh.CONTEO_TODO,
      2022_fct_rh.Importe_TODO, 2023_fct_rh.Importe_TODO, 2023_fct_rh.CONTEO_TODO,
      2024_fct_rh.Importe_TODO, 2024_fct_rh.CONTEO_TODO, 2025_fct_rh.Importe_TODO,
      2025_fct_rh.CONTEO_TODO]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      fct_rh.CONTEO_TODO: HC
      fct_rh.inicio_year: Año
      fct_rh.Importe_TODO: Costo
    series_cell_visualizations:
      fct_rh.Importe_TODO:
        is_active: false
    series_collapsed:
      fct_rh.subdivision: true
    header_font_color: "#fff"
    header_background_color: "#b03427"
    series_value_format:
      fct_rh.Importe_TODO:
        format_string:
      fct_rh.CONTEO_TODO:
        format_string:
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
    listen: {}
    row: 35
    col: 0
    width: 24
    height: 6
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
      Período: fct_nomina.date_filter
      División de Envases: fct_nomina.division_envases
    row: 2
    col: 0
    width: 24
    height: 6
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
      Período: fct_nomina.date_filter
      División de Envases: fct_nomina.division_envases
    row: 8
    col: 0
    width: 24
    height: 6
  - title: Análisis por rubro 2
    name: Análisis por rubro 2
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
      Período: fct_nomina.date_filter
      División de Envases: fct_nomina.division_envases
    row: 29
    col: 0
    width: 24
    height: 6
  - title: Comparativo Plantas / Subdivisiones con desglose de rubros de pago
    name: Comparativo Plantas / Subdivisiones con desglose de rubros de pago
    model: ti_rrhh
    explore: fct_nomina
    type: looker_grid
    fields: [fct_nomina.subdivision, fct_nomina.clasificacion_cc, fct_nomina.importe_lyear2,
      fct_nomina.importe_lyear, fct_nomina.importe_year, fct_nomina.variacion_importe_year_lyear,
      fct_nomina.variacion_perc_importe_year_lyear, fct_nomina.concepto]
    filters:
      fct_nomina.clasificacion_cc: "-NULL"
    sorts: [fct_nomina.subdivision, fct_nomina.clasificacion_cc, fct_nomina.concepto]
    subtotals: [fct_nomina.subdivision, fct_nomina.clasificacion_cc]
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
      Período: fct_nomina.date_filter
      División de Envases: fct_nomina.division_envases
    row: 57
    col: 0
    width: 24
    height: 7
  filters:
  - name: Período
    title: Período
    type: field_filter
    default_value: 2022/12/31
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
  - name: División de Envases
    title: División de Envases
    type: field_filter
    default_value: ALG,CORP,ALU,PET
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: ti_rrhh
    explore: fct_nomina
    listens_to_filters: []
    field: fct_nomina.division_envases
