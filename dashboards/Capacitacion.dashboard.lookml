---
- dashboard: capacitacin
  title: Capacitación
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Gd5QiLoUPPsjOkDEGdO5s3
  layout: newspaper
  elements:
  - title: Horas de capacitación
    name: Horas de capacitación
    model: ti_rrhh
    explore: vw_complemento_capacitacion_vacantes
    type: looker_grid
    fields: [vw_complemento_capacitacion_vacantes.area_personal, vw_complemento_capacitacion_vacantes.division_envases,
      vw_complemento_capacitacion_vacantes.centro, vw_complemento_capacitacion_vacantes.horas_capacitacion]
    filters:
      vw_complemento_capacitacion_vacantes.denominacion: Capacitación
    sorts: [vw_complemento_capacitacion_vacantes.area_personal, vw_complemento_capacitacion_vacantes.division_envases,
      vw_complemento_capacitacion_vacantes.centro]
    subtotals: [vw_complemento_capacitacion_vacantes.area_personal, vw_complemento_capacitacion_vacantes.division_envases]
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
      vw_complemento_capacitacion_vacantes.horas_capacitacion: Cant/Hrs
      calendario.NOMBRE_MES: Mes
    series_column_widths:
      vw_complemento_capacitacion_vacantes.centro: 175
    series_cell_visualizations:
      vw_complemento_capacitacion_vacantes.horas_capacitacion:
        is_active: false
    series_collapsed:
      vw_complemento_capacitacion_vacantes.division_envases: true
    header_font_color: "#FFF"
    header_background_color: "#B42F37"
    series_value_format:
      vw_complemento_capacitacion_vacantes.horas_capacitacion:
        format_string:
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Periodo: vw_complemento_capacitacion_vacantes.periodo_date
      Codigo Pais: vw_complemento_capacitacion_vacantes.codigo_pais
      Division: vw_complemento_capacitacion_vacantes.division_envases
      Sociedad: vw_complemento_capacitacion_vacantes.sociedad
      Centro: vw_complemento_capacitacion_vacantes.centro
    row: 2
    col: 0
    width: 9
    height: 10
  - title: Horas capacitacion hombre
    name: Horas capacitacion hombre
    model: ti_rrhh
    explore: vw_complemento_capacitacion_vacantes
    type: looker_grid
    fields: [vw_complemento_capacitacion_vacantes.division_envases, vw_complemento_capacitacion_vacantes.centro,
      vw_complemento_capacitacion_vacantes.meta_horas_hombre, vw_complemento_capacitacion_vacantes.horas_hombre_capacitacion,
      vw_complemento_capacitacion_vacantes.activos_mes, vw_complemento_capacitacion_vacantes.horas_capacitacion_real]
    sorts: [vw_complemento_capacitacion_vacantes.division_envases, vw_complemento_capacitacion_vacantes.centro]
    subtotals: [vw_complemento_capacitacion_vacantes.division_envases]
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
    column_order: []
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 65
    series_labels:
      calendario.NOMBRE_MES: Mes
    series_cell_visualizations:
      vw_complemento_capacitacion_vacantes.meta_horas_hombre:
        is_active: false
    header_font_color: "#FFF"
    header_background_color: "#B42F37"
    series_value_format:
      vw_complemento_capacitacion_vacantes.meta_horas_hombre:
        format_string: "#,##0.00"
      vw_complemento_capacitacion_vacantes.horas_hombre_capacitacion:
        format_string: "#,##0.00"
      vw_complemento_capacitacion_vacantes.activos_mes:
        format_string:
      vw_complemento_capacitacion_vacantes.horas_capacitacion_real:
        format_string:
    defaults_version: 1
    listen:
      Periodo: vw_complemento_capacitacion_vacantes.periodo_date
      Codigo Pais: vw_complemento_capacitacion_vacantes.codigo_pais
      Division: vw_complemento_capacitacion_vacantes.division_envases
      Sociedad: vw_complemento_capacitacion_vacantes.sociedad
      Centro: vw_complemento_capacitacion_vacantes.centro
    row: 1
    col: 9
    width: 15
    height: 10
  - title: Capacitacion por area personal y centro
    name: Capacitacion por area personal y centro
    model: ti_rrhh
    explore: vw_complemento_capacitacion_vacantes
    type: looker_column
    fields: [vw_complemento_capacitacion_vacantes.area_personal, vw_complemento_capacitacion_vacantes.centro,
      vw_complemento_capacitacion_vacantes.horas_capacitacion]
    pivots: [vw_complemento_capacitacion_vacantes.area_personal]
    filters:
      vw_complemento_capacitacion_vacantes.area_personal: Administrativo,Operativo
    sorts: [vw_complemento_capacitacion_vacantes.area_personal, vw_complemento_capacitacion_vacantes.horas_capacitacion
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
    y_axes: [{label: '', orientation: left, series: [{axisId: vw_complemento_capacitacion_vacantes.horas_capacitacion,
            id: Administrativo - vw_complemento_capacitacion_vacantes.horas_capacitacion,
            name: Administrativo}, {axisId: vw_complemento_capacitacion_vacantes.horas_capacitacion,
            id: Operativo - vw_complemento_capacitacion_vacantes.horas_capacitacion,
            name: Operativo}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_color: ["#000000"]
    advanced_vis_config: |
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
        "series": [
          {
            "name": "Administrativo",
            "color": "#8B0000"  // Rojo oscuro
          },
          {
            "name": "Operativo",
            "color": "#BDBB00"  // Amarillo oliva
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
      vw_complemento_capacitacion_vacantes.meta_horas_hombre:
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
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Periodo: vw_complemento_capacitacion_vacantes.periodo_date
      Codigo Pais: vw_complemento_capacitacion_vacantes.codigo_pais
      Division: vw_complemento_capacitacion_vacantes.division_envases
      Sociedad: vw_complemento_capacitacion_vacantes.sociedad
      Centro: vw_complemento_capacitacion_vacantes.centro
    row: 12
    col: 0
    width: 24
    height: 11
  - title: Accidentes
    name: Accidentes
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: single_value
    fields: [vw_complemento_ausentismos_accidentes.button_accidentes]
    sorts: [vw_complemento_ausentismos_accidentes.button_accidentes]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    smart_single_value_size: true
    defaults_version: 1
    listen:
      Periodo: calendario.sel_periodo
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 0
    col: 0
    width: 3
    height: 1
  - title: vacantes
    name: vacantes
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: single_value
    fields: [vw_complemento_ausentismos_accidentes.button_vacantes]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    smart_single_value_size: true
    defaults_version: 1
    listen:
      Periodo: calendario.sel_periodo
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 1
    col: 3
    width: 3
    height: 1
  - title: Ausentismos
    name: Ausentismos
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: single_value
    fields: [vw_complemento_ausentismos_accidentes.button_ausentismos]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    smart_single_value_size: true
    defaults_version: 1
    listen:
      Periodo: calendario.sel_periodo
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 0
    col: 6
    width: 3
    height: 1
  - title: Altas
    name: Altas
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: single_value
    fields: [vw_complemento_ausentismos_accidentes.button_altas]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    smart_single_value_size: true
    defaults_version: 1
    listen:
      Periodo: calendario.sel_periodo
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 0
    col: 3
    width: 3
    height: 1
  - title: Bajas
    name: Bajas
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: single_value
    fields: [vw_complemento_ausentismos_accidentes.button_bajas]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    smart_single_value_size: true
    defaults_version: 1
    listen:
      Periodo: calendario.sel_periodo
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 0
    col: 9
    width: 3
    height: 1
  - title: Capacitacion
    name: Capacitacion
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: single_value
    fields: [vw_complemento_ausentismos_accidentes.button_capacitacion]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    smart_single_value_size: true
    defaults_version: 1
    listen:
      Periodo: calendario.sel_periodo
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 0
    col: 12
    width: 3
    height: 1
  - title: nomina
    name: nomina
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: single_value
    fields: [vw_complemento_ausentismos_accidentes.button_nomina]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    smart_single_value_size: true
    defaults_version: 1
    listen:
      Periodo: calendario.sel_periodo
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 0
    col: 15
    width: 3
    height: 1
  - title: Rotacion
    name: Rotacion
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: single_value
    fields: [vw_complemento_ausentismos_accidentes.button_rotacion]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    smart_single_value_size: true
    defaults_version: 1
    listen:
      Periodo: calendario.sel_periodo
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 1
    col: 0
    width: 3
    height: 1
  - title: Plantilla
    name: Plantilla
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: single_value
    fields: [vw_complemento_ausentismos_accidentes.button_plantilla]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    smart_single_value_size: true
    defaults_version: 1
    listen:
      Periodo: calendario.sel_periodo
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 0
    col: 18
    width: 3
    height: 1
  filters:
  - name: Periodo
    title: Periodo
    type: field_filter
    default_value: last month
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
    listens_to_filters: [Division, Sociedad, Centro]
    field: vw_complemento_capacitacion_vacantes.codigo_pais
  - name: Division
    title: Division
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: ti_rrhh
    explore: vw_complemento_capacitacion_vacantes
    listens_to_filters: [Codigo Pais, Sociedad, Centro]
    field: vw_complemento_capacitacion_vacantes.division_envases
  - name: Sociedad
    title: Sociedad
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: ti_rrhh
    explore: vw_complemento_capacitacion_vacantes
    listens_to_filters: [Codigo Pais, Division, Centro]
    field: vw_complemento_capacitacion_vacantes.sociedad
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
    listens_to_filters: [Codigo Pais, Division, Sociedad]
    field: vw_complemento_capacitacion_vacantes.centro
