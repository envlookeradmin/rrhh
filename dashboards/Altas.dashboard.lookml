---
- dashboard: altas
  title: Altas
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: yhqBJh8aY3MjfXuN2QErVC
  elements:
  - title: Altas por área de personal y centro
    name: Altas por área de personal y centro
    model: ti_rrhh
    explore: plantilla
    type: looker_grid
    fields: [plantilla.area_personal, plantilla.subdivision, plantilla.altas_month]
    filters:
      plantilla.clase_medida: Alta
    sorts: [plantilla.area_personal, plantilla.subdivision]
    subtotals: [plantilla.area_personal]
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
      plantilla.area_personal: Area de Personal
      plantilla.subdivision: Cto.
      plantilla.cantidad_month: Cantidad
      plantilla.altas_month: Cantidad
    series_cell_visualizations:
      plantilla.cantidad_month:
        is_active: true
    header_font_color: "#FFF"
    header_background_color: "#b03427"
    series_value_format:
      plantilla.altas_month:
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
  - title: Altas por div negocio, área de personal y centro
    name: Altas por div negocio, área de personal y centro
    model: ti_rrhh
    explore: plantilla
    type: looker_grid
    fields: [plantilla.division_envases, plantilla.area_personal, plantilla.subdivision,
      plantilla.altas_month]
    filters:
      plantilla.clase_medida: Alta
    sorts: [plantilla.division_envases, plantilla.area_personal, plantilla.subdivision]
    subtotals: [plantilla.division_envases, plantilla.area_personal]
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
      plantilla.area_personal: Area de Personal
      plantilla.subdivision: Cto.
      plantilla.cantidad_month: Cantidad
      plantilla.altas_month: Cantidad
    series_cell_visualizations:
      plantilla.cantidad_sum:
        is_active: true
    header_font_color: "#FFF"
    header_background_color: "#b03427"
    series_value_format:
      plantilla.altas_month:
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
      Periodo: calendario.sel_periodo
      Division: plantilla.division_envases
      Centro: plantilla.subdivision
      Codigo Pais: plantilla.codigo_pais
    row: 0
    col: 12
    width: 12
    height: 6
  - title: Altas por área de personal y div negocio
    name: Altas por área de personal y div negocio
    model: ti_rrhh
    explore: plantilla
    type: looker_column
    fields: [plantilla.division_envases, plantilla.area_personal, plantilla.altas_month]
    pivots: [plantilla.division_envases]
    filters:
      plantilla.clase_medida: Alta
    sorts: [plantilla.division_envases, plantilla.area_personal]
    limit: 500
    column_limit: 50
    total: true
    x_axis_gridlines: true
    y_axis_gridlines: false
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: ce8f7692-3810-4a5e-bcb5-2c946ddd83d2
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
    y_axes: [{label: '', orientation: left, series: [{axisId: plantilla.cantidad_month,
            id: ALG - plantilla.cantidad_month, name: ALG}, {axisId: plantilla.cantidad_month,
            id: ALU - plantilla.cantidad_month, name: ALU}, {axisId: plantilla.cantidad_month,
            id: PET - plantilla.cantidad_month, name: PET}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels:
      plantilla.division_envases: Div. Negocio
      plantilla.area_personal: Area de Personal
      plantilla.subdivision: Cto.
    show_dropoff: false
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
      plantilla.cantidad_sum:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
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
      Periodo: calendario.sel_periodo
      Division: plantilla.division_envases
      Centro: plantilla.subdivision
      Codigo Pais: plantilla.codigo_pais
    row: 6
    col: 2
    width: 20
    height: 6
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
