---
- dashboard: rotacin
  title: Rotación
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 2LPn49sgTgQPTO63zzuyeH
  elements:
  - title: Rotación involuntaria / rotación voluntaria
    name: Rotación involuntaria / rotación voluntaria
    model: ti_rrhh
    explore: plantilla
    type: looker_grid
    fields: [plantilla.division_envases, plantilla.bajas_invol_month, plantilla.bajas_vol_month,
      plantilla.rotacion_invol_month, plantilla.rotacion_vol_month]
    filters: {}
    sorts: [plantilla.bajas_vol_month desc]
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
    listen:
      Periodo: calendario.sel_periodo
      Division: plantilla.division_envases
      Centro: plantilla.subdivision
      Codigo Pais: plantilla.codigo_pais
    row: 0
    col: 0
    width: 12
    height: 6
  - title: Rotación por área de personal
    name: Rotación por área de personal
    model: ti_rrhh
    explore: plantilla
    type: looker_grid
    fields: [plantilla.bajas_invol_month, plantilla.bajas_vol_month, plantilla.rotacion_invol_month,
      plantilla.rotacion_vol_month, plantilla.area_personal]
    filters:
      plantilla.area_personal: "-NULL"
    sorts: [plantilla.bajas_vol_month desc]
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
    listen:
      Periodo: calendario.sel_periodo
      Division: plantilla.division_envases
      Centro: plantilla.subdivision
      Codigo Pais: plantilla.codigo_pais
    row: 0
    col: 12
    width: 12
    height: 6
  - title: Rotación involuntaria y voluntaria por div negocio y centro
    name: Rotación involuntaria y voluntaria por div negocio y centro
    model: ti_rrhh
    explore: plantilla
    type: looker_grid
    fields: [plantilla.division_envases, plantilla.subdivision, plantilla.rotacion_month,
      plantilla.rotacion_meta_indicador_month, plantilla.activos_month, plantilla.bajas_month]
    filters: {}
    sorts: [plantilla.division_envases, plantilla.subdivision]
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
      plantilla.rotacion_meta_indicador_month: "% Meta Rot."
    series_cell_visualizations:
      plantilla.bajas_vol_month:
        is_active: false
    header_font_color: "#FFF"
    header_background_color: "#b03427"
    series_value_format:
      plantilla.activos_month:
        format_string:
      plantilla.bajas_month:
        format_string:
      plantilla.rotacion_month:
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
      Periodo: calendario.sel_periodo
      Division: plantilla.division_envases
      Centro: plantilla.subdivision
      Codigo Pais: plantilla.codigo_pais
    row: 6
    col: 0
    width: 14
    height: 6
  - title: Rotación % por div negocio
    name: Rotación % por div negocio
    model: ti_rrhh
    explore: plantilla
    type: looker_pie
    fields: [plantilla.division_envases, plantilla.rotacion_month]
    filters:
      plantilla.rotacion_month: "<100"
    sorts: [plantilla.rotacion_month desc 0]
    limit: 500
    column_limit: 50
    total: true
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: 6d5e27f9-8094-e1b6-38d0-d3aac4b514f9
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
    advanced_vis_config: |-
      {
        chart: {},
        plotOptions: {
          pie: {
            dataLabels: {
              enabled: true,
              format: '{point.name}: {point.y:.2f}%'
            }
          }
        },
        series: [{}]
      }
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
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
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      plantilla.rotacion_month:
        format_string: 0.00\%
    hide_totals: false
    hide_row_totals: false
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
      Periodo: calendario.sel_periodo
      Division: plantilla.division_envases
      Centro: plantilla.subdivision
      Codigo Pais: plantilla.codigo_pais
    row: 6
    col: 14
    width: 10
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
