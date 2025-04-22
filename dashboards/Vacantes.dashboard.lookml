---
- dashboard: vacantes
  title: Vacantes
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 4RYTijFWVDg0tm0MCErhH3
  elements:
  - title: Total y Clasificacion de vacantes
    name: Total y Clasificacion de vacantes
    model: ti_rrhh
    explore: vw_complemento_capacitacion_vacantes
    type: looker_grid
    fields: [vw_complemento_capacitacion_vacantes.area_personal, vw_complemento_capacitacion_vacantes.division_envases,
      vw_complemento_capacitacion_vacantes.centro, vw_complemento_capacitacion_vacantes.total_vacantes,
      vw_complemento_capacitacion_vacantes.vacantes_externas_cubiertas, vw_complemento_capacitacion_vacantes.vacantes_internas_cubiertas]
    filters:
      vw_complemento_capacitacion_vacantes.denominacion: Total Vacantes,Vacantes Externas
        Cubiertas,Vacantes Interno Cubiertas
    sorts: [vw_complemento_capacitacion_vacantes.area_personal, vw_complemento_capacitacion_vacantes.division_envases,
      vw_complemento_capacitacion_vacantes.centro]
    subtotals: [vw_complemento_capacitacion_vacantes.area_personal, vw_complemento_capacitacion_vacantes.division_envases]
    limit: 500
    column_limit: 50
    total: true
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
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 65
    series_labels:
      calendario.NOMBRE_MES: Mes
      vw_complemento_capacitacion_vacantes.vacantes_externas_cubiertas: Vacantes Externas
      vw_complemento_capacitacion_vacantes.vacantes_internas_cubiertas: Vacantes Internas
    series_column_widths:
      vw_complemento_capacitacion_vacantes.centro: 175
    series_cell_visualizations:
      vw_complemento_capacitacion_vacantes.total_vacantes:
        is_active: false
    series_collapsed:
      vw_complemento_capacitacion_vacantes.division_envases: true
    header_font_color: "#FFF"
    header_background_color: "#B42F37"
    series_value_format:
      vw_complemento_capacitacion_vacantes.total_vacantes:
        format_string:
      vw_complemento_capacitacion_vacantes.vacantes_externas_cubiertas:
        format_string:
      vw_complemento_capacitacion_vacantes.vacantes_internas_cubiertas:
        format_string:
    defaults_version: 1
    listen:
      Periodo Date: vw_complemento_capacitacion_vacantes.periodo_date
      Division Envases: vw_complemento_capacitacion_vacantes.division_envases
      Codigo Pais: vw_complemento_capacitacion_vacantes.codigo_pais
      Centro: vw_complemento_capacitacion_vacantes.centro
    row: 0
    col: 0
    width: 12
    height: 9
  - title: Porcentaje de meta y vacantes
    name: Porcentaje de meta y vacantes
    model: ti_rrhh
    explore: vw_complemento_capacitacion_vacantes
    type: looker_grid
    fields: [vw_complemento_capacitacion_vacantes.division_envases, vw_complemento_capacitacion_vacantes.centro,
      vw_complemento_capacitacion_vacantes.meta_vacantes_pct, vw_complemento_capacitacion_vacantes.pct_vacantes]
    sorts: [vw_complemento_capacitacion_vacantes.division_envases, vw_complemento_capacitacion_vacantes.centro]
    subtotals: [vw_complemento_capacitacion_vacantes.division_envases]
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
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 65
    series_labels:
      calendario.NOMBRE_MES: Mes
    series_column_widths:
      vw_complemento_capacitacion_vacantes.centro: 175
    series_cell_visualizations:
      vw_complemento_capacitacion_vacantes.meta_vacantes_pct:
        is_active: false
    series_collapsed:
      vw_complemento_capacitacion_vacantes.division_envases: true
    header_font_color: "#FFF"
    header_background_color: "#B42F37"
    series_value_format:
      vw_complemento_capacitacion_vacantes.meta_vacantes_pct:
        format_string: "#,##0.00%"
      vw_complemento_capacitacion_vacantes.pct_vacantes_cubiertas:
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
      Periodo Date: vw_complemento_capacitacion_vacantes.periodo_date
      Division Envases: vw_complemento_capacitacion_vacantes.division_envases
      Codigo Pais: vw_complemento_capacitacion_vacantes.codigo_pais
      Centro: vw_complemento_capacitacion_vacantes.centro
    row: 0
    col: 12
    width: 12
    height: 9
  - title: Vacantes por area personal y centro de trabajo
    name: Vacantes por area personal y centro de trabajo
    model: ti_rrhh
    explore: vw_complemento_capacitacion_vacantes
    type: looker_column
    fields: [vw_complemento_capacitacion_vacantes.centro, vw_complemento_capacitacion_vacantes.area_personal,
      vw_complemento_capacitacion_vacantes.total_vacantes]
    pivots: [vw_complemento_capacitacion_vacantes.area_personal]
    filters:
      vw_complemento_capacitacion_vacantes.area_personal: "-NULL"
      vw_complemento_capacitacion_vacantes.denominacion: Total Vacantes
    sorts: [vw_complemento_capacitacion_vacantes.area_personal, vw_complemento_capacitacion_vacantes.total_vacantes
        desc 0]
    limit: 500
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: [vw_complemento_capacitacion_vacantes.area_personal___null - vw_complemento_capacitacion_vacantes.total_vacantes]
    series_labels:
      calendario.NOMBRE_MES: Mes
    advanced_vis_config: |-
      {
        "chart": {
          "type": "column"
        },
        "xAxis": {
          "labels": {
            "rotation": -45
          }
        },
        "plotOptions": {
          "series": {
            "grouping": true
          }
        },
        "series": [{
            "name": "Administrativo",
            "color": "#8B0000" // Rojo oscuro
          },
          {
            "name": "Operativo",
            "color": "#BDBB00" // Amarillo oliva
          }
        ]
      }
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      vw_complemento_capacitacion_vacantes.meta_vacantes_pct:
        is_active: false
    table_theme: white
    enable_conditional_formatting: false
    header_font_color: "#FFF"
    header_background_color: "#5e2129"
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    hidden_pivots: {}
    listen:
      Periodo Date: vw_complemento_capacitacion_vacantes.periodo_date
      Division Envases: vw_complemento_capacitacion_vacantes.division_envases
      Codigo Pais: vw_complemento_capacitacion_vacantes.codigo_pais
      Centro: vw_complemento_capacitacion_vacantes.centro
    row: 9
    col: 0
    width: 24
    height: 10
  - title: Promociones por Planta
    name: Promociones por Planta
    model: ti_rrhh
    explore: vw_complemento_capacitacion_vacantes
    type: looker_grid
    fields: [vw_complemento_capacitacion_vacantes.division_envases, vw_complemento_capacitacion_vacantes.area_personal,
      vw_complemento_capacitacion_vacantes.centro, vw_complemento_capacitacion_vacantes.promociones,
      vw_complemento_capacitacion_vacantes.activos_mes, vw_complemento_capacitacion_vacantes.crecimiento]
    filters:
      vw_complemento_capacitacion_vacantes.area_personal: "-NULL"
    sorts: [vw_complemento_capacitacion_vacantes.division_envases, vw_complemento_capacitacion_vacantes.area_personal,
      vw_complemento_capacitacion_vacantes.centro]
    subtotals: [vw_complemento_capacitacion_vacantes.division_envases, vw_complemento_capacitacion_vacantes.area_personal]
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
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 65
    series_labels:
      calendario.NOMBRE_MES: Mes
    series_column_widths:
      vw_complemento_capacitacion_vacantes.centro: 175
    series_cell_visualizations:
      vw_complemento_capacitacion_vacantes.meta_vacantes_pct:
        is_active: false
    series_collapsed:
      vw_complemento_capacitacion_vacantes.division_envases: false
      vw_complemento_capacitacion_vacantes.area_personal: true
    header_font_color: "#FFF"
    header_background_color: "#B42F37"
    series_value_format:
      vw_complemento_capacitacion_vacantes.promociones:
        format_string:
      vw_complemento_capacitacion_vacantes.activos_mes:
        format_string:
      vw_complemento_capacitacion_vacantes.crecimiento:
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
    hidden_pivots: {}
    listen:
      Periodo Date: vw_complemento_capacitacion_vacantes.periodo_date
      Division Envases: vw_complemento_capacitacion_vacantes.division_envases
      Codigo Pais: vw_complemento_capacitacion_vacantes.codigo_pais
      Centro: vw_complemento_capacitacion_vacantes.centro
    row: 19
    col: 0
    width: 12
    height: 9
  filters:
  - name: Periodo Date
    title: Periodo Date
    type: field_filter
    default_value: 2025-01
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: ti_rrhh
    explore: vw_complemento_capacitacion_vacantes
    listens_to_filters: []
    field: vw_complemento_capacitacion_vacantes.periodo_date
  - name: Division Envases
    title: Division Envases
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: ti_rrhh
    explore: vw_complemento_capacitacion_vacantes
    listens_to_filters: []
    field: vw_complemento_capacitacion_vacantes.division_envases
  - name: Codigo Pais
    title: Codigo Pais
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: ti_rrhh
    explore: vw_complemento_capacitacion_vacantes
    listens_to_filters: []
    field: vw_complemento_capacitacion_vacantes.codigo_pais
  - name: Centro
    title: Centro
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: ti_rrhh
    explore: vw_complemento_capacitacion_vacantes
    listens_to_filters: [Division Envases]
    field: vw_complemento_capacitacion_vacantes.centro
