---
- dashboard: nomina
  title: Nomina
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: O3cczxQBJyVWfS8ExUvgLO
  elements:
  - title: Nomina Total por Area de personal
    name: Nomina Total por Area de personal
    model: ti_rrhh
    explore: complemento_nomina
    type: looker_grid
    fields: [complemento_nomina.area, complemento_nomina.division, complemento_nomina.fecha_pago_month_name,
      complemento_nomina.nomina, complemento_nomina.tiempo_extra, complemento_nomina.pct_tiempo_extra,
      complemento_nomina.tiempo_extra_mas_descanso, complemento_nomina.pct_te_dt]
    filters:
      complemento_nomina.area: "-NULL"
    sorts: [complemento_nomina.area, complemento_nomina.division, complemento_nomina.fecha_pago_month_name]
    subtotals: [complemento_nomina.area, complemento_nomina.division]
    limit: 500
    column_limit: 50
    total: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 65
    series_labels:
      complemento_nomina.fecha_pago_month_name: Mes
    series_cell_visualizations:
      complemento_nomina.nomina:
        is_active: true
    series_collapsed:
      complemento_nomina.division: true
    header_font_color: "#ffffff"
    header_background_color: "#B42F37"
    series_value_format:
      complemento_nomina.nomina:
        format_string:
      complemento_nomina.tiempo_extra:
        format_string:
      complemento_nomina.pct_tiempo_extra:
        format_string: "#,##0.00%"
      complemento_nomina.tiempo_extra_mas_descanso:
        format_string:
      complemento_nomina.pct_te_dt:
        format_string: "#,##0.00%"
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
      Mes Calendario Date: calendario_nomina.mes_calendario_date
      Division: complemento_nomina.division
      Subdivision: complemento_nomina.subdivision
    row: 0
    col: 1
    width: 15
    height: 11
  - title: Desglose TE + Des_Trab por Area, Division
    name: Desglose TE + Des_Trab por Area, Division
    model: ti_rrhh
    explore: complemento_nomina
    type: looker_grid
    fields: [complemento_nomina.area, complemento_nomina.division, complemento_nomina.fecha_pago_month_name,
      complemento_nomina.subdivision, complemento_nomina.tiempo_extra_mas_descanso,
      complemento_nomina.tiempo_extra_mas_descanso_cantidad, complemento_nomina.denominacion]
    pivots: [complemento_nomina.denominacion]
    filters:
      complemento_nomina.area: "-NULL"
      complemento_nomina.es_te_o_dt: 'Yes'
    sorts: [complemento_nomina.denominacion, complemento_nomina.area, complemento_nomina.division,
      complemento_nomina.fecha_pago_month_name, complemento_nomina.subdivision]
    subtotals: [complemento_nomina.area, complemento_nomina.division, complemento_nomina.fecha_pago_month_name]
    limit: 500
    column_limit: 50
    total: true
    row_total: right
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", complemento_nomina.area, complemento_nomina.division,
      complemento_nomina.subdivision, complemento_nomina.fecha_pago_month_name, complemento_nomina.nomina,
      complemento_nomina.tiempo_extra, complemento_nomina.pct_tiempo_extra, complemento_nomina.tiempo_extra_mas_descanso,
      complemento_nomina.pct_te_dt]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 65
    series_labels:
      complemento_nomina.fecha_pago_month_name: Mes
      complemento_nomina.tiempo_extra_mas_descanso: Importe
      complemento_nomina.tiempo_extra_mas_descanso_cantidad: Cantidad
    series_cell_visualizations:
      complemento_nomina.nomina:
        is_active: true
    series_collapsed:
      complemento_nomina.division: true
    header_font_color: "#ffffff"
    header_background_color: "#B42F37"
    series_value_format:
      complemento_nomina.tiempo_extra_mas_descanso:
        format_string:
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
      Mes Calendario Date: calendario_nomina.mes_calendario_date
      Division: complemento_nomina.division
      Subdivision: complemento_nomina.subdivision
    row: 11
    col: 1
    width: 22
    height: 10
  - title: Tiempo Extra vs Meta
    name: Tiempo Extra vs Meta
    model: ti_rrhh
    explore: complemento_nomina
    type: looker_grid
    fields: [complemento_nomina.division, complemento_nomina.subdivision, complemento_nomina.meta_te,
      complemento_nomina.pct_tiempo_extra_icon, complemento_nomina.pct_te_dt_icon]
    sorts: [complemento_nomina.division, complemento_nomina.subdivision]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", complemento_nomina.division, complemento_nomina.subdivision,
      complemento_nomina.pct_tiempo_extra, complemento_nomina.pct_tiempo_extra_icon,
      complemento_nomina.pct_te_dt, complemento_nomina.meta_te]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 65
    series_labels:
      complemento_nomina.fecha_pago_month_name: Mes
      complemento_nomina.pct_tiempo_extra_icon: "% Tiempo Extra"
    series_cell_visualizations:
      complemento_nomina.nomina:
        is_active: true
    series_collapsed:
      complemento_nomina.division: true
    header_font_color: "#ffffff"
    header_background_color: "#B42F37"
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
      Mes Calendario Date: calendario_nomina.mes_calendario_date
      Division: complemento_nomina.division
      Subdivision: complemento_nomina.subdivision
    row: 21
    col: 7
    width: 10
    height: 11
  - title: Distribución Nómina por Area
    name: Distribución Nómina por Area
    model: ti_rrhh
    explore: complemento_nomina
    type: looker_pie
    fields: [complemento_nomina.area, complemento_nomina.nomina]
    filters:
      complemento_nomina.area: "-NULL"
    sorts: [complemento_nomina.nomina desc 0]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
      options:
        steps: 5
    defaults_version: 1
    listen:
      Mes Calendario Date: calendario_nomina.mes_calendario_date
      Division: complemento_nomina.division
      Subdivision: complemento_nomina.subdivision
    row: 0
    col: 16
    width: 8
    height: 6
  - title: 'Comparativo Tiempo Extra por Planta y Area (TOP 10) '
    name: 'Comparativo Tiempo Extra por Planta y Area (TOP 10) '
    model: ti_rrhh
    explore: complemento_nomina
    type: looker_column
    fields: [complemento_nomina.subdivision, complemento_nomina.area, complemento_nomina.tiempo_extra]
    pivots: [complemento_nomina.area]
    filters:
      complemento_nomina.area: "-NULL"
    sorts: [complemento_nomina.area, complemento_nomina.tiempo_extra desc 2]
    limit: 10
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
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
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
      options:
        steps: 5
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Mes Calendario Date: calendario_nomina.mes_calendario_date
      Division: complemento_nomina.division
      Subdivision: complemento_nomina.subdivision
    row: 32
    col: 0
    width: 24
    height: 7
  - title: Comparativo TE + Des_Trab por Planta y Area  (TOP 10)
    name: Comparativo TE + Des_Trab por Planta y Area  (TOP 10)
    model: ti_rrhh
    explore: complemento_nomina
    type: looker_column
    fields: [complemento_nomina.subdivision, complemento_nomina.area, complemento_nomina.tiempo_extra_mas_descanso]
    pivots: [complemento_nomina.area]
    filters:
      complemento_nomina.area: "-NULL"
    sorts: [complemento_nomina.area, complemento_nomina.tiempo_extra_mas_descanso
        desc 2]
    limit: 10
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
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
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    value_labels: labels
    label_type: labPer
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Mes Calendario Date: calendario_nomina.mes_calendario_date
      Division: complemento_nomina.division
      Subdivision: complemento_nomina.subdivision
    row: 39
    col: 0
    width: 24
    height: 7
  filters:
  - name: Mes Calendario Date
    title: Mes Calendario Date
    type: field_filter
    default_value: 2025-01
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: ti_rrhh
    explore: complemento_nomina
    listens_to_filters: []
    field: calendario_nomina.mes_calendario_date
  - name: Division
    title: Division
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: ti_rrhh
    explore: complemento_nomina
    listens_to_filters: []
    field: complemento_nomina.division
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
    explore: complemento_nomina
    listens_to_filters: [Division]
    field: complemento_nomina.subdivision
