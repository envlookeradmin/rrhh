---
- dashboard: bajas
  title: Bajas
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: lqqcHLhF10ZOv4qXGB92dt
  elements:
  - title: Bajas por área de personal
    name: Bajas por área de personal
    model: ti_rrhh
    explore: plantilla
    type: looker_grid
    fields: [plantilla.area_personal, plantilla.bajas_invol_month, plantilla.bajas_vol_month]
    filters:
      plantilla.area_personal: "-NULL"
    sorts: [plantilla.area_personal]
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
      plantilla.division_envases: Div. Negocio
      plantilla.bajas_invol_month: EBaja Involuntaria
      plantilla.bajas_vol_month: EBaja Voluntaria
      plantilla.rotacion_invol_month: Rot Inv %
      plantilla.rotacion_vol_month: Rot Vol %
      plantilla.subdivision: Cto.
      plantilla.rotacion_month: "% Rotación"
      plantilla.rotacion_meta_month: "% Meta Rot."
      plantilla.activos_month: Activo
      plantilla.bajas_month: Bajas
    series_cell_visualizations:
      plantilla.bajas_vol_month:
        is_active: false
    header_font_color: "#FFF"
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
    value_labels: legend
    label_type: labPer
    listen:
      Periodo: calendario.sel_periodo
      Division: plantilla.division_envases
      Centro: plantilla.subdivision
      Codigo Pais: plantilla.codigo_pais
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Bajas por género
    name: Bajas por género
    model: ti_rrhh
    explore: plantilla
    type: looker_grid
    fields: [plantilla.bajas_invol_month, plantilla.bajas_vol_month, plantilla.genero]
    filters:
      plantilla.genero: "-NULL"
    sorts: [plantilla.bajas_invol_month desc 0]
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
      plantilla.division_envases: Div. Negocio
      plantilla.bajas_invol_month: EBaja Involuntaria
      plantilla.bajas_vol_month: EBaja Voluntaria
      plantilla.rotacion_invol_month: Rot Inv %
      plantilla.rotacion_vol_month: Rot Vol %
      plantilla.subdivision: Cto.
      plantilla.rotacion_month: "% Rotación"
      plantilla.rotacion_meta_month: "% Meta Rot."
      plantilla.activos_month: Activo
      plantilla.bajas_month: Bajas
    series_cell_visualizations:
      plantilla.bajas_vol_month:
        is_active: false
    header_font_color: "#FFF"
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
    value_labels: legend
    label_type: labPer
    listen:
      Periodo: calendario.sel_periodo
      Division: plantilla.division_envases
      Centro: plantilla.subdivision
      Codigo Pais: plantilla.codigo_pais
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Bajas involuntarias / bajas voluntarias
    name: Bajas involuntarias / bajas voluntarias
    model: ti_rrhh
    explore: plantilla
    type: looker_grid
    fields: [plantilla.bajas_invol_month, plantilla.bajas_vol_month, plantilla.division_envases,
      plantilla.subdivision]
    filters: {}
    sorts: [plantilla.division_envases, plantilla.bajas_invol_month desc]
    subtotals: [plantilla.division_envases]
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
      plantilla.division_envases: Div. Negocio
      plantilla.bajas_invol_month: EBaja Involuntaria
      plantilla.bajas_vol_month: EBaja Voluntaria
      plantilla.rotacion_invol_month: Rot Inv %
      plantilla.rotacion_vol_month: Rot Vol %
      plantilla.subdivision: Cto.
      plantilla.rotacion_month: "% Rotación"
      plantilla.rotacion_meta_month: "% Meta Rot."
      plantilla.activos_month: Activo
      plantilla.bajas_month: Bajas
    series_cell_visualizations:
      plantilla.bajas_vol_month:
        is_active: false
    header_font_color: "#FFF"
    header_background_color: "#b03427"
    series_value_format:
      plantilla.bajas_invol_month:
        format_string:
      plantilla.bajas_vol_month:
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
    value_labels: legend
    label_type: labPer
    listen:
      Periodo: calendario.sel_periodo
      Division: plantilla.division_envases
      Centro: plantilla.subdivision
      Codigo Pais: plantilla.codigo_pais
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Bajas por área de personal y div negocio
    name: Bajas por área de personal y div negocio
    model: ti_rrhh
    explore: plantilla
    type: looker_column
    fields: [plantilla.division_envases, area_tipo_baja, plantilla.bajas_month]
    pivots: [plantilla.division_envases]
    filters:
      plantilla.area_personal: "-NULL"
      plantilla.motivo_medida: Involuntario,Voluntario
    sorts: [plantilla.division_envases, area_tipo_baja]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: concat(${plantilla.area_personal}, " ", ${plantilla.motivo_medida})
      label: Area - Tipo Baja
      value_format:
      value_format_name:
      dimension: area_tipo_baja
      _kind_hint: dimension
      _type_hint: string
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
        id: 1526b13a-e94c-88b4-4c1d-a96061f71d89
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
    y_axes: [{label: '', orientation: left, series: [{axisId: plantilla.bajas_month,
            id: ALG - plantilla.bajas_month, name: ALG}, {axisId: plantilla.bajas_month,
            id: ALU - plantilla.bajas_month, name: ALU}, {axisId: plantilla.bajas_month,
            id: PET - plantilla.bajas_month, name: PET}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels:
      plantilla.division_envases: Div. Negocio
      plantilla.bajas_invol_month: EBaja Involuntaria
      plantilla.bajas_vol_month: EBaja Voluntaria
      plantilla.rotacion_invol_month: Rot Inv %
      plantilla.rotacion_vol_month: Rot Vol %
      plantilla.subdivision: Cto.
      plantilla.rotacion_month: "% Rotación"
      plantilla.rotacion_meta_month: "% Meta Rot."
      plantilla.activos_month: Activo
      plantilla.bajas_month: Bajas
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      plantilla.bajas_vol_month:
        is_active: false
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      plantilla.bajas_month:
        format_string:
    hide_totals: false
    hide_row_totals: false
    hidden_pivots: {}
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    listen:
      Periodo: calendario.sel_periodo
      Division: plantilla.division_envases
      Centro: plantilla.subdivision
      Codigo Pais: plantilla.codigo_pais
    row: 6
    col: 2
    width: 20
    height: 7
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
