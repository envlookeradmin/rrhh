---
- dashboard: compaia
  title: Compañia
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: lA3BRP0UoQJ0c7TGS3jeas
  elements:
  - title: Numero de Colaboradores Totales x Division
    name: Numero de Colaboradores Totales x Division
    model: ti_rrhh
    explore: plantilla
    type: looker_grid
    fields: [plantilla.division_envases, plantilla.genero, plantilla.subdivision,
      plantilla.activos_month]
    filters:
      plantilla.estatus: Activo
    sorts: [plantilla.division_envases, plantilla.genero, plantilla.subdivision]
    subtotals: [plantilla.division_envases, plantilla.genero]
    limit: 500
    column_limit: 50
    total: true
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
      plantilla.division_envases: Div. Negocio
      plantilla.genero: Genero
      plantilla.subdivision: Cto.
      plantilla.activos_month: Activos
    series_cell_visualizations:
      plantilla.activos_month:
        is_active: true
    header_font_color: "#FFF"
    header_background_color: "#b03427"
    series_value_format:
      plantilla.activos_month:
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
    listen:
      Periodo: calendario.sel_periodo
      Division: plantilla.division_envases
      Centro: plantilla.subdivision
      Codigo Pais: plantilla.codigo_pais
    row: 0
    col: 0
    width: 12
    height: 6
  - title: Numero de Colaboradores Totales x Planta
    name: Numero de Colaboradores Totales x Planta
    model: ti_rrhh
    explore: plantilla
    type: looker_grid
    fields: [plantilla.division_envases, plantilla.subdivision, plantilla.activos_month,
      plantilla.autorizados_month, plantilla.activos_menos_autorizados]
    filters:
      plantilla.estatus: Activo
    sorts: [plantilla.division_envases, plantilla.subdivision]
    subtotals: [plantilla.division_envases]
    limit: 500
    column_limit: 50
    total: true
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
      plantilla.division_envases: Div. Negocio
      plantilla.genero: Genero
      plantilla.subdivision: Cto.
      plantilla.activos_month: Activos
      plantilla.autorizados_month: Plantilla Autorizada
      plantilla.activos_menos_autorizados: Diferencia Activo - P. Autorizada
    series_cell_visualizations:
      plantilla.activos_month:
        is_active: true
    header_font_color: "#FFF"
    header_background_color: "#b03427"
    series_value_format:
      plantilla.activos_month:
        format_string:
      plantilla.autorizados_month:
        format_string:
      plantilla.activos_menos_autorizados:
        format_string: '0.00'
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
      Periodo: calendario.sel_periodo
      Division: plantilla.division_envases
      Centro: plantilla.subdivision
      Codigo Pais: plantilla.codigo_pais
    row: 0
    col: 12
    width: 12
    height: 6
  - title: Colaboradores por Div Negocio
    name: Colaboradores por Div Negocio
    model: ti_rrhh
    explore: plantilla
    type: looker_pie
    fields: [plantilla.activos_month, pais_division]
    filters:
      plantilla.estatus: Activo
    sorts: [plantilla.activos_month desc 0]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: dimension
      expression: concat(${plantilla.codigo_pais}, " ", ${plantilla.division_envases})
      label: Pais - Division
      value_format:
      value_format_name:
      dimension: pais_division
      _kind_hint: dimension
      _type_hint: string
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: '06714943-3da6-2487-fd17-af8d82be2684'
        label: Custom
        type: discrete
        colors:
        - "#b34f44"
        - "#a0a0a0"
        - "#56c3b4"
        - "#c49644"
        - "#5a88c4"
        - "#9b6fc4"
        - "#FF8168"
        - "#E8710A"
        - "#EA4335"
        - "#E52592"
        - "#9334E6"
        - "#80868B"
      options:
        steps: 5
        reverse: false
    series_colors: {}
    series_labels:
      plantilla.division_envases: Div. Negocio
      plantilla.genero: Genero
      plantilla.subdivision: Cto.
      plantilla.activos_month: Activos
      plantilla.autorizados_month: Plantilla Autorizada
      plantilla.activos_menos_autorizados: Diferencia Activo - P. Autorizada
    advanced_vis_config: |-
      {
        chart: {},
        plotOptions: {
          pie: {
            dataLabels: {
              enabled: true,
              format: '{point.name}: {point.y} ({point.percentage:.2f}%)'
            }
          }
        },
        series: [{}]
      }
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      plantilla.activos_month:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      plantilla.activos_month:
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
    hide_totals: false
    hide_row_totals: false
    hidden_pivots: {}
    listen:
      Periodo: calendario.sel_periodo
      Division: plantilla.division_envases
      Centro: plantilla.subdivision
      Codigo Pais: plantilla.codigo_pais
    row: 6
    col: 4
    width: 16
    height: 9
  filters:
  - name: Periodo
    title: Periodo
    type: field_filter
    default_value: 2025/01/31
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
      options: []
    model: ti_rrhh
    explore: plantilla
    listens_to_filters: []
    field: calendario.sel_periodo
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
    explore: plantilla
    listens_to_filters: []
    field: plantilla.codigo_pais
  - name: Division
    title: Division
    type: field_filter
    default_value: ALG,ALU,CORP,PET
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: ti_rrhh
    explore: plantilla
    listens_to_filters: []
    field: plantilla.division_envases
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
    explore: plantilla
    listens_to_filters: [Division]
    field: plantilla.subdivision
