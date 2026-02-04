---
- dashboard: accidentes
  title: Accidentes
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: vciFP68ix5J7IpBVdiwOST
  layout: newspaper
  elements:
  - title: Accidentes por área de personal y div negocio
    name: Accidentes por área de personal y div negocio
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: looker_grid
    fields: [vw_complemento_ausentismos_accidentes.area_personal, vw_complemento_ausentismos_accidentes.accidentes_adp_month,
      vw_complemento_ausentismos_accidentes.dias_incapacidad_month, vw_complemento_ausentismos_accidentes.indice_frecuencia_ltr_month,
      vw_complemento_ausentismos_accidentes.indice_severidad_month, vw_complemento_ausentismos_accidentes.division_envases]
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
      vw_complemento_ausentismos_accidentes.division_envases: Div. Negocio
    series_cell_visualizations:
      vw_complemento_ausentismos_accidentes.accidentes_adp_month:
        is_active: true
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
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Periodo: calendario.sel_periodo
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 2
    col: 0
    width: 24
    height: 12
  - title: Accidentes por área de personal, div negocio y centro
    name: Accidentes por área de personal, div negocio y centro
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: looker_grid
    fields: [vw_complemento_ausentismos_accidentes.area_personal, vw_complemento_ausentismos_accidentes.division_envases,
      vw_complemento_ausentismos_accidentes.subdivision, vw_complemento_ausentismos_accidentes.accidentes_adp_month,
      vw_complemento_ausentismos_accidentes.dias_incapacidad_month, vw_complemento_ausentismos_accidentes.indice_frecuencia_ltr_month,
      vw_complemento_ausentismos_accidentes.indice_severidad_month]
    filters:
      vw_complemento_ausentismos_accidentes.area_personal: "-NULL"
    sorts: [vw_complemento_ausentismos_accidentes.area_personal, vw_complemento_ausentismos_accidentes.division_envases]
    subtotals: [vw_complemento_ausentismos_accidentes.area_personal, vw_complemento_ausentismos_accidentes.division]
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
      vw_complemento_ausentismos_accidentes.subdivision: Cto.
      vw_complemento_ausentismos_accidentes.division_envases: Div. Negocio
    series_cell_visualizations:
      vw_complemento_ausentismos_accidentes.accidentes_adp_month:
        is_active: true
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
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Periodo: calendario.sel_periodo
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 14
    col: 0
    width: 24
    height: 12
  - title: Accidentes / Meta-accidentes por div negocio y centro
    name: Accidentes / Meta-accidentes por div negocio y centro
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: looker_grid
    fields: [vw_complemento_ausentismos_accidentes.division_envases, vw_complemento_ausentismos_accidentes.subdivision,
      vw_complemento_ausentismos_accidentes.accidentes_adp_month, vw_complemento_ausentismos_accidentes.accidentes_meta_indicador_month]
    filters:
      vw_complemento_ausentismos_accidentes.area_personal: "-NULL"
    sorts: [vw_complemento_ausentismos_accidentes.division_envases, vw_complemento_ausentismos_accidentes.accidentes_adp_month
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
      vw_complemento_ausentismos_accidentes.subdivision: Cto.
      vw_complemento_ausentismos_accidentes.accidentes_meta_indicador_month: Meta
        - Accidentes
      vw_complemento_ausentismos_accidentes.division_envases: Div. Negocio
    series_cell_visualizations:
      vw_complemento_ausentismos_accidentes.accidentes_adp_month:
        is_active: true
    header_font_color: "#fff"
    header_background_color: "#b03427"
    series_value_format:
      vw_complemento_ausentismos_accidentes.accidentes_adp_month:
        name: decimal_2
        decimals: '2'
        format_string: "#,##0.00"
        label: Decimals (2)
        label_prefix: Decimals
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
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Periodo: calendario.sel_periodo
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 26
    col: 0
    width: 24
    height: 12
  - title: Accidentes por centro
    name: Accidentes por centro
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: looker_column
    fields: [vw_complemento_ausentismos_accidentes.subdivision, vw_complemento_ausentismos_accidentes.area_personal,
      vw_complemento_ausentismos_accidentes.accidentes_adp_month, vw_complemento_ausentismos_accidentes.indice_frecuencia_ltr_month]
    pivots: [vw_complemento_ausentismos_accidentes.area_personal]
    filters:
      vw_complemento_ausentismos_accidentes.area_personal: Operativo,Sin Asignar
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
      Sin Asignar - vw_complemento_ausentismos_accidentes.indice_frecuencia_ltr_month: Sin
        Asignar - Indice de frecuencia LTR
      Sin Asignar - vw_complemento_ausentismos_accidentes.accidentes_adp_month: Sin
        Asignar - Accidentes ADP
      Operativo - vw_complemento_ausentismos_accidentes.indice_frecuencia_ltr_month: Operativo
        - Indice de frecuencia LTR
      Operativo - vw_complemento_ausentismos_accidentes.accidentes_adp_month: Operativo
        - Accidentes ADP
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
    series_value_format:
      vw_complemento_ausentismos_accidentes.accidentes_adp_month:
        name: decimal_2
        decimals: '2'
        format_string: "#,##0.00"
        label: Decimals (2)
        label_prefix: Decimals
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Periodo: calendario.sel_periodo
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 38
    col: 0
    width: 24
    height: 12
  - title: accidentes
    name: accidentes
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
    single_value_title: ''
    smart_single_value_size: true
    defaults_version: 1
    listen:
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Periodo: calendario.sel_periodo
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 0
    col: 3
    width: 3
    height: 1
  - title: ausentismos
    name: ausentismos
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: single_value
    fields: [vw_complemento_ausentismos_accidentes.button_ausentismos]
    sorts: [vw_complemento_ausentismos_accidentes.button_ausentismos]
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
    single_value_title: ''
    smart_single_value_size: true
    defaults_version: 1
    listen:
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Periodo: calendario.sel_periodo
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 0
    col: 6
    width: 3
    height: 1
  - title: bajas
    name: bajas
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: single_value
    fields: [vw_complemento_ausentismos_accidentes.button_bajas]
    sorts: [vw_complemento_ausentismos_accidentes.button_bajas]
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
    single_value_title: ''
    smart_single_value_size: true
    defaults_version: 1
    listen:
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Periodo: calendario.sel_periodo
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 0
    col: 9
    width: 3
    height: 1
  - title: nomina
    name: nomina
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: single_value
    fields: [vw_complemento_ausentismos_accidentes.button_nomina]
    sorts: [vw_complemento_ausentismos_accidentes.button_nomina]
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
    single_value_title: ''
    smart_single_value_size: true
    defaults_version: 1
    listen:
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Periodo: calendario.sel_periodo
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 0
    col: 15
    width: 3
    height: 1
  - title: capacitacion
    name: capacitacion
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: single_value
    fields: [vw_complemento_ausentismos_accidentes.button_capacitacion]
    sorts: [vw_complemento_ausentismos_accidentes.button_capacitacion]
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
    single_value_title: ''
    smart_single_value_size: true
    defaults_version: 1
    listen:
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Periodo: calendario.sel_periodo
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 0
    col: 12
    width: 3
    height: 1
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
    single_value_title: ''
    smart_single_value_size: true
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab, options: {mirror: false,
            reverse: false, stepped: false}}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    defaults_version: 1
    listen:
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Periodo: calendario.sel_periodo
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 0
    col: 0
    width: 3
    height: 1
  - title: plantilla por compañia
    name: plantilla por compañia
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: single_value
    fields: [vw_complemento_ausentismos_accidentes.button_plantilla]
    sorts: [vw_complemento_ausentismos_accidentes.button_plantilla]
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
    single_value_title: ''
    smart_single_value_size: true
    defaults_version: 1
    listen:
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Periodo: calendario.sel_periodo
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 0
    col: 18
    width: 3
    height: 1
  - title: rotación
    name: rotación
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: single_value
    fields: [vw_complemento_ausentismos_accidentes.button_rotacion]
    sorts: [vw_complemento_ausentismos_accidentes.button_rotacion]
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
    single_value_title: ''
    smart_single_value_size: true
    defaults_version: 1
    listen:
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Periodo: calendario.sel_periodo
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 1
    col: 3
    width: 3
    height: 1
  - title: vacantes
    name: vacantes
    model: ti_rrhh
    explore: vw_complemento_ausentismos_accidentes
    type: single_value
    fields: [vw_complemento_ausentismos_accidentes.button_vacantes]
    sorts: [vw_complemento_ausentismos_accidentes.button_vacantes]
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
    single_value_title: ''
    smart_single_value_size: true
    defaults_version: 1
    listen:
      Codigo Pais: vw_complemento_ausentismos_accidentes.codigo_pais
      Sociedad: vw_complemento_ausentismos_accidentes.sociedad
      Periodo: calendario.sel_periodo
      Division: vw_complemento_ausentismos_accidentes.division_envases
      Centro: vw_complemento_ausentismos_accidentes.subdivision
    row: 1
    col: 0
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
