---
- dashboard: plantilla_por_gnero
  title: Plantilla por Género
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: uU4lKyLOQMmPskUFTHFmhj
  layout: newspaper
  elements:
  - title: Género - Activos por área de personal y div negocio
    name: Género - Activos por área de personal y div negocio
    model: ti_rrhh
    explore: plantilla
    type: looker_grid
    fields: [plantilla.area_personal, plantilla.division_envases, plantilla.genero,
      plantilla.activos_month]
    sorts: [plantilla.area_personal, plantilla.division_envases]
    subtotals: [plantilla.area_personal, plantilla.division_envases]
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
      plantilla.division_envases: Div. Negocio
      plantilla.genero: Genero
      plantilla.cantidad_sum: Cantidad
      plantilla.cantidad_month: Cantidad
    series_cell_visualizations:
      plantilla.cantidad_sum:
        is_active: true
    series_collapsed:
      plantilla.area_personal: false
      plantilla.division_envases: false
    header_font_color: "#FFF"
    header_background_color: "#b03427"
    series_value_format:
      plantilla.activos_month:
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
    listen:
      Periodo: calendario.sel_periodo
      Codigo Pais: plantilla.codigo_pais
      Division: plantilla.division_envases
      Sociedad: plantilla.sociedad
      Centro: plantilla.subdivision
    row: 2
    col: 0
    width: 12
    height: 7
  - title: Género - Activos por área de personal y centro
    name: Género - Activos por área de personal y centro
    model: ti_rrhh
    explore: plantilla
    type: looker_grid
    fields: [plantilla.area_personal, plantilla.genero, plantilla.subdivision, plantilla.activos_month]
    sorts: [plantilla.area_personal, plantilla.genero]
    subtotals: [plantilla.area_personal, plantilla.genero]
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
      plantilla.division_envases: Div. Negocio
      plantilla.genero: Genero
      plantilla.cantidad_sum: Cantidad
      plantilla.cantidad_month: Cantidad
      plantilla.subdivision: Cto.
      plantilla.activos_month: Cantidad
    series_cell_visualizations:
      plantilla.cantidad_sum:
        is_active: true
    series_collapsed:
      plantilla.area_personal: false
      plantilla.division_envases: false
    header_font_color: "#FFF"
    header_background_color: "#b03427"
    series_value_format:
      plantilla.activos_month:
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
    listen:
      Periodo: calendario.sel_periodo
      Codigo Pais: plantilla.codigo_pais
      Division: plantilla.division_envases
      Sociedad: plantilla.sociedad
      Centro: plantilla.subdivision
    row: 1
    col: 12
    width: 12
    height: 7
  - title: Género - % Personal
    name: Género - % Personal
    model: ti_rrhh
    explore: plantilla
    type: looker_pie
    fields: [plantilla.genero, plantilla.activos_month]
    sorts: [plantilla.genero]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      args:
      - plantilla.cantidad_sum
      based_on: plantilla.cantidad_sum
      calculation_type: percent_of_column_sum
      category: table_calculation
      label: Percent of Plantilla Cantidad
      source_field: plantilla.cantidad_sum
      table_calculation: percent_of_plantilla_cantidad
      value_format:
      value_format_name: percent_0
      is_disabled: true
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: f6332a0e-aa13-8909-183d-388822c26f21
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
      plantilla.area_personal: Area de Personal
      plantilla.division_envases: Div. Negocio
      plantilla.genero: Genero
      plantilla.cantidad_sum: Cantidad
      percent_of_plantilla_cantidad: "% Cantidad"
    advanced_vis_config: |-
      {
        chart: {},
        plotOptions: {
          pie: {
            dataLabels: {
              enabled: true,
              format: '{point.name}: {point.y} ({point.percentage:.1f}%)'
            }
          }
        },
        series: [{}]
      }
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: plantilla.cantidad_sum,
            id: plantilla.cantidad_sum, name: Cantidad}, {axisId: percent_of_plantilla_cantidad,
            id: percent_of_plantilla_cantidad, name: "% Cantidad"}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
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
    series_collapsed:
      plantilla.area_personal: false
      plantilla.division_envases: false
    enable_conditional_formatting: false
    header_font_color: "#FFF"
    header_background_color: "#1A73E8"
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    show_null_points: true
    interpolation: linear
    listen:
      Periodo: calendario.sel_periodo
      Codigo Pais: plantilla.codigo_pais
      Division: plantilla.division_envases
      Sociedad: plantilla.sociedad
      Centro: plantilla.subdivision
    row: 8
    col: 12
    width: 12
    height: 6
  - title: Género - % Personal por área de personal
    name: Género - % Personal por área de personal
    model: ti_rrhh
    explore: plantilla
    type: looker_column
    fields: [plantilla.area_personal, plantilla.genero, plantilla.activos_month]
    pivots: [plantilla.genero]
    sorts: [plantilla.genero, plantilla.area_personal, plantilla.cantidad_sum desc
        0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      args:
      - plantilla.cantidad_sum
      based_on: plantilla.cantidad_sum
      calculation_type: percent_of_column_sum
      category: table_calculation
      label: Percent of Plantilla Cantidad
      source_field: plantilla.cantidad_sum
      table_calculation: percent_of_plantilla_cantidad
      value_format:
      value_format_name: percent_0
      is_disabled: true
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
        id: cefd0758-7015-dac5-e3f5-7eba0e63a73b
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
    y_axes: [{label: '', orientation: left, series: [{axisId: plantilla.cantidad_month,
            id: Femenino - plantilla.cantidad_month, name: Femenino}, {axisId: plantilla.cantidad_month,
            id: Masculino - plantilla.cantidad_month, name: Masculino}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors: {}
    series_labels:
      plantilla.area_personal: Area de Personal
      plantilla.division_envases: Div. Negocio
      plantilla.genero: Genero
      plantilla.cantidad_sum: Cantidad
      percent_of_plantilla_cantidad: "% Cantidad"
    value_labels: legend
    label_type: labPer
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
    series_collapsed:
      plantilla.area_personal: false
      plantilla.division_envases: false
    enable_conditional_formatting: false
    header_font_color: "#FFF"
    header_background_color: "#1A73E8"
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    show_null_points: true
    interpolation: linear
    listen:
      Periodo: calendario.sel_periodo
      Codigo Pais: plantilla.codigo_pais
      Division: plantilla.division_envases
      Sociedad: plantilla.sociedad
      Centro: plantilla.subdivision
    row: 9
    col: 0
    width: 12
    height: 6
  - title: Accidentes
    name: Accidentes
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: single_value
    fields: [vw_complemento_ausentismos_accidentes.button_accidentes]
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
  - title: Nomina
    name: Nomina
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
  - title: Plantillas
    name: Plantillas
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
  - title: Ausentismo
    name: Ausentismo
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
  filters:
  - name: Periodo
    title: Periodo
    type: field_filter
    default_value: last month
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
    listens_to_filters: [Division, Sociedad, Centro]
    field: plantilla.codigo_pais
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
    explore: plantilla
    listens_to_filters: [Codigo Pais, Sociedad, Centro]
    field: plantilla.division_envases
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
    explore: plantilla
    listens_to_filters: [Codigo Pais, Division, Centro]
    field: plantilla.sociedad
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
    listens_to_filters: [Codigo Pais, Division, Sociedad]
    field: plantilla.subdivision
