---
- dashboard: ausentismos
  title: Ausentismos
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: zJ1xAtZj51ywOaUnKGLh72
  layout: newspaper
  elements:
  - title: Ausentismos por área de personal y div negocio
    name: Ausentismos por área de personal y div negocio
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: looker_grid
    fields: [vw_complemento_ausentismos_accidentes.area_personal, vw_complemento_ausentismos_accidentes.ratio_operaciones,
      vw_complemento_ausentismos_accidentes.ausentismos_month, vw_complemento_ausentismos_accidentes.porcentaje_ausentismo,
      vw_complemento_ausentismos_accidentes.division_envases]
    filters:
      vw_complemento_ausentismos_accidentes.area_personal: "-NULL"
    sorts: [vw_complemento_ausentismos_accidentes.area_personal]
    subtotals: [vw_complemento_ausentismos_accidentes.area_personal]
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
      vw_complemento_ausentismos_accidentes.area_personal: Area de Personal
      vw_complemento_ausentismos_accidentes.division: Div. Negocio
      vw_complemento_ausentismos_accidentes.accidentes_adp_month: Accidentes ADP
      vw_complemento_ausentismos_accidentes.dias_incapacidad_month: Días de Incapacidad
      vw_complemento_ausentismos_accidentes.indice_frecuencia_ltr_month: Índice de
        Frecuencia LTR
      vw_complemento_ausentismos_accidentes.indice_severidad_month: Índice de Severidad
      vw_complemento_ausentismos_accidentes.ratio_operaciones: Días laborados
      vw_complemento_ausentismos_accidentes.ausentismos_month: Faltas injustificadas
      vw_complemento_ausentismos_accidentes.division_envases: Div. Negocio
    series_cell_visualizations:
      vw_complemento_ausentismos_accidentes.accidentes_adp_month:
        is_active: true
    header_font_color: "#fff"
    header_background_color: "#b03427"
    series_value_format:
      vw_complemento_ausentismos_accidentes.ausentismos_month:
        name: decimal_2
        decimals: '2'
        format_string: "#,##0.00"
        label: Decimals (2)
        label_prefix: Decimals
      vw_complemento_ausentismos_accidentes.porcentaje_ausentismo:
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
    hidden_pivots: {}
    listen:
      Centro: vw_complemento_ausentismos_accidentes.subdivision
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Periodo: calendario.sel_periodo
    row: 2
    col: 0
    width: 24
    height: 12
  - title: Ausentismo por Div negocio y centro
    name: Ausentismo por Div negocio y centro
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: looker_grid
    fields: [vw_complemento_ausentismos_accidentes.division_envases, vw_complemento_ausentismos_accidentes.subdivision,
      vw_complemento_ausentismos_accidentes.ausentismos_meta_indicador_month, vw_complemento_ausentismos_accidentes.porcentaje_ausentismo,
      vw_complemento_ausentismos_accidentes.activos_month, vw_complemento_ausentismos_accidentes.ausentismos_month]
    filters:
      vw_complemento_ausentismos_accidentes.area_personal: "-NULL"
    sorts: [vw_complemento_ausentismos_accidentes.division_envases, vw_complemento_ausentismos_accidentes.ausentismos_meta_indicador_month
        desc]
    subtotals: [vw_complemento_ausentismos_accidentes.division]
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
      vw_complemento_ausentismos_accidentes.area_personal: Area de Personal
      vw_complemento_ausentismos_accidentes.division: Div. Negocio
      vw_complemento_ausentismos_accidentes.accidentes_adp_month: Accidentes ADP
      vw_complemento_ausentismos_accidentes.dias_incapacidad_month: Días de Incapacidad
      vw_complemento_ausentismos_accidentes.indice_frecuencia_ltr_month: Índice de
        Frecuencia LTR
      vw_complemento_ausentismos_accidentes.indice_severidad_month: Índice de Severidad
      vw_complemento_ausentismos_accidentes.ratio_operaciones: Ratio Ausentismo
      vw_complemento_ausentismos_accidentes.ausentismos_month: Faltas injustificadas
      vw_complemento_ausentismos_accidentes.subdivision: Cto.
      vw_complemento_ausentismos_accidentes.ausentismos_meta_indicador_month: "% Meta\
        \ Ausentismo"
      vw_complemento_ausentismos_accidentes.division_envases: Div. Negocio
    series_cell_visualizations:
      vw_complemento_ausentismos_accidentes.accidentes_adp_month:
        is_active: true
    header_font_color: "#fff"
    header_background_color: "#b03427"
    series_value_format:
      vw_complemento_ausentismos_accidentes.porcentaje_ausentismo:
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
    hidden_pivots: {}
    listen:
      Centro: vw_complemento_ausentismos_accidentes.subdivision
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Periodo: calendario.sel_periodo
    row: 14
    col: 0
    width: 24
    height: 12
  - title: Ausentismo por Área de Personal y Centro
    name: Ausentismo por Área de Personal y Centro
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: looker_column
    fields: [vw_complemento_ausentismos_accidentes.subdivision, vw_complemento_ausentismos_accidentes.area_personal,
      vw_complemento_ausentismos_accidentes.porcentaje_ausentismo]
    pivots: [vw_complemento_ausentismos_accidentes.area_personal]
    filters:
      vw_complemento_ausentismos_accidentes.area_personal: "-NULL"
    sorts: [vw_complemento_ausentismos_accidentes.area_personal, vw_complemento_ausentismos_accidentes.subdivision]
    limit: 500
    column_limit: 50
    total: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: vw_complemento_ausentismos_accidentes.ausentismos_month,
            id: ALG - vw_complemento_ausentismos_accidentes.ausentismos_month, name: ALG},
          {axisId: vw_complemento_ausentismos_accidentes.ausentismos_month, id: ALU
              - vw_complemento_ausentismos_accidentes.ausentismos_month, name: ALU},
          {axisId: vw_complemento_ausentismos_accidentes.ausentismos_month, id: CORP
              - vw_complemento_ausentismos_accidentes.ausentismos_month, name: CORP},
          {axisId: vw_complemento_ausentismos_accidentes.ausentismos_month, id: OTRO
              - vw_complemento_ausentismos_accidentes.ausentismos_month, name: OTRO},
          {axisId: vw_complemento_ausentismos_accidentes.ausentismos_month, id: PET
              - vw_complemento_ausentismos_accidentes.ausentismos_month, name: PET}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Administrativo - vw_complemento_ausentismos_accidentes.ausentismos_month: "#079c98"
      Operativo - vw_complemento_ausentismos_accidentes.ausentismos_month: "#A8A116"
      Sindicalizado - vw_complemento_ausentismos_accidentes.ausentismos_month: "#7CB342"
      Ejecutivo - vw_complemento_ausentismos_accidentes.ausentismos_month: "#1A73E8"
    series_labels:
      vw_complemento_ausentismos_accidentes.area_personal: Area de Personal
      vw_complemento_ausentismos_accidentes.division: Div. Negocio
      vw_complemento_ausentismos_accidentes.accidentes_adp_month: Accidentes ADP
      vw_complemento_ausentismos_accidentes.dias_incapacidad_month: Días de Incapacidad
      vw_complemento_ausentismos_accidentes.indice_frecuencia_ltr_month: Índice de
        Frecuencia LTR
      vw_complemento_ausentismos_accidentes.indice_severidad_month: Índice de Severidad
      vw_complemento_ausentismos_accidentes.subdivision: Cto.
      vw_complemento_ausentismos_accidentes.accidentes_meta_indicador_month: Meta
        - Accidentes
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
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
    series_cell_visualizations:
      vw_complemento_ausentismos_accidentes.accidentes_adp_month:
        is_active: true
    header_font_color: "#fff"
    header_background_color: "#b03427"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Centro: vw_complemento_ausentismos_accidentes.subdivision
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Periodo: calendario.sel_periodo
    row: 26
    col: 0
    width: 24
    height: 12
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
    defaults_version: 1
    listen:
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Centro: vw_complemento_ausentismos_accidentes.subdivision
      Periodo: calendario.sel_periodo
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
    defaults_version: 1
    listen:
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Centro: vw_complemento_ausentismos_accidentes.subdivision
      Periodo: calendario.sel_periodo
    row: 0
    col: 15
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
    defaults_version: 1
    listen:
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Centro: vw_complemento_ausentismos_accidentes.subdivision
      Periodo: calendario.sel_periodo
    row: 0
    col: 18
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
    defaults_version: 1
    listen:
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Centro: vw_complemento_ausentismos_accidentes.subdivision
      Periodo: calendario.sel_periodo
    row: 0
    col: 9
    width: 3
    height: 1
  - title: Altas
    name: Altas
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: single_value
    fields: [vw_complemento_ausentismos_accidentes.button_altas]
    sorts: [vw_complemento_ausentismos_accidentes.button_altas]
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
    defaults_version: 1
    listen:
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Centro: vw_complemento_ausentismos_accidentes.subdivision
      Periodo: calendario.sel_periodo
    row: 0
    col: 3
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
    defaults_version: 1
    listen:
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Centro: vw_complemento_ausentismos_accidentes.subdivision
      Periodo: calendario.sel_periodo
    row: 0
    col: 12
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
    defaults_version: 1
    listen:
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Centro: vw_complemento_ausentismos_accidentes.subdivision
      Periodo: calendario.sel_periodo
    row: 0
    col: 6
    width: 3
    height: 1
  - title: Vacantes
    name: Vacantes
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
    defaults_version: 1
    listen:
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Centro: vw_complemento_ausentismos_accidentes.subdivision
      Periodo: calendario.sel_periodo
    row: 1
    col: 0
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
    defaults_version: 1
    listen:
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Centro: vw_complemento_ausentismos_accidentes.subdivision
      Periodo: calendario.sel_periodo
    row: 1
    col: 3
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
    explore: vw_complemento_ausentismos_accidentes
    listens_to_filters: []
    field: calendario.sel_periodo
  - name: Codigo Pais
    title: Codigo Pais
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    listens_to_filters: [Division, Sociedad, Centro]
    field: vw_complemento_ausentismos_accidentes.codigo_pais
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
    explore: vw_complemento_ausentismos_accidentes
    listens_to_filters: [Codigo Pais, Sociedad, Centro]
    field: vw_complemento_ausentismos_accidentes.division_envases
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
    explore: vw_complemento_ausentismos_accidentes
    listens_to_filters: [Codigo Pais, Division, Centro]
    field: vw_complemento_ausentismos_accidentes.sociedad
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
    explore: vw_complemento_ausentismos_accidentes
    listens_to_filters: [Codigo Pais, Division, Sociedad]
    field: vw_complemento_ausentismos_accidentes.subdivision
