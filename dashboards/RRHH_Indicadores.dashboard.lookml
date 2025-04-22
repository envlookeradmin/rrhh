---
- dashboard: rrhh_indicadores_v2
  title: RRHH Indicadores v2
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: pujcBJEhkMuRTfUIICuthy
  elements:
  - title: Untitled
    name: Untitled
    model: ti_rrhh
    explore: indicadores
    type: single_value
    fields: [indicadores.head_count_mes]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
    custom_color: "#4276BE"
    single_value_title: HeadCount
    defaults_version: 1
    listen:
      Division Envases: indicadores.division_envases
      Periodo: calendario.sel_periodo
      Subdivision: indicadores.subdivision
    row: 0
    col: 0
    width: 4
    height: 2
  - title: Untitled (Copy)
    name: Untitled (Copy)
    model: ti_rrhh
    explore: indicadores
    type: single_value
    fields: [indicadores.hc_pct_vs_mes_ly]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
    custom_color: "#B42F37"
    single_value_title: "% vs AA"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Division Envases: indicadores.division_envases
      Periodo: calendario.sel_periodo
      Subdivision: indicadores.subdivision
    row: 0
    col: 4
    width: 4
    height: 2
  - title: Untitled (Copy 2)
    name: Untitled (Copy 2)
    model: ti_rrhh
    explore: indicadores
    type: single_value
    fields: [indicadores.bajas_mes]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
    custom_color: "#4276BE"
    single_value_title: Bajas
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Division Envases: indicadores.division_envases
      Periodo: calendario.sel_periodo
      Subdivision: indicadores.subdivision
    row: 0
    col: 8
    width: 4
    height: 2
  - title: Untitled (Copy 3)
    name: Untitled (Copy 3)
    model: ti_rrhh
    explore: indicadores
    type: single_value
    fields: [indicadores.rotacion_mes]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
    custom_color: "#B42F37"
    single_value_title: "% Rotacion"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Division Envases: indicadores.division_envases
      Periodo: calendario.sel_periodo
      Subdivision: indicadores.subdivision
    row: 0
    col: 12
    width: 4
    height: 2
  - title: Untitled (Copy 4)
    name: Untitled (Copy 4)
    model: ti_rrhh
    explore: indicadores
    type: single_value
    fields: [indicadores.ausentismo_mes]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
    custom_color: "#4276BE"
    single_value_title: Ausentismo
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Division Envases: indicadores.division_envases
      Periodo: calendario.sel_periodo
      Subdivision: indicadores.subdivision
    row: 0
    col: 16
    width: 4
    height: 2
  - title: Untitled (Copy 5)
    name: Untitled (Copy 5)
    model: ti_rrhh
    explore: indicadores
    type: single_value
    fields: [indicadores.au_pct_vs_mes_ly]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
    custom_color: "#B42F37"
    single_value_title: "% vs AA"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Division Envases: indicadores.division_envases
      Periodo: calendario.sel_periodo
      Subdivision: indicadores.subdivision
    row: 0
    col: 20
    width: 4
    height: 2
  - title: HEAD COUNT
    name: HEAD COUNT
    model: ti_rrhh
    explore: indicadores
    type: looker_grid
    fields: [indicadores.periodo_month_name, indicadores.head_count, indicadores.head_count_ly,
      indicadores.hc_diferencia_ly, indicadores.hc_pct_vs_ly]
    filters:
      indicadores.head_count: not 0
    sorts: [indicadores.periodo_month_name]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: offset(${indicadores.head_count}, -1)
      label: Mes Previo
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: mes_previo
      _type_hint: number
    - category: table_calculation
      expression: "(${indicadores.head_count} - ${mes_previo})"
      label: Dif vs MA
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: dif_vs_ma
      _type_hint: number
    - category: table_calculation
      expression: "${dif_vs_ma} / ${mes_previo}"
      label: "% vs MA"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: vs_ma
      _type_hint: number
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
    minimum_column_width: 60
    series_labels:
      indicadores.periodo_month_name: Mes
      indicadores.head_count: HC
      indicadores.head_count_ly: AA
      indicadores.hc_pct_vs_ly: "% Dif AA"
      indicadores.hc_diferencia_ly: Dif vs AA
      mes_previo: MA
      vs_ma: "% vs MA"
    series_cell_visualizations:
      indicadores.head_count:
        is_active: false
    header_font_color: "#FFFFFF"
    header_background_color: "#B42F37"
    defaults_version: 1
    hidden_fields: [dif_vs_ma]
    listen:
      Division Envases: indicadores.division_envases
      Periodo: calendario.sel_periodo
      Subdivision: indicadores.subdivision
    row: 2
    col: 0
    width: 8
    height: 6
  - title: AUSENTISMO
    name: AUSENTISMO
    model: ti_rrhh
    explore: indicadores
    type: looker_grid
    fields: [indicadores.periodo_month_name, indicadores.ausentismo, indicadores.ausentismo_ly,
      indicadores.au_diferencia_ly, indicadores.au_pct_vs_ly]
    filters:
      indicadores.ausentismo: not 0
    sorts: [indicadores.periodo_month_name]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: offset(${indicadores.ausentismo}, -1)
      label: Mes Previo
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: mes_previo
      _type_hint: number
    - category: table_calculation
      expression: "(${indicadores.ausentismo} - ${mes_previo})"
      label: Dif vs MA
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: dif_vs_ma
      _type_hint: number
    - category: table_calculation
      expression: "${dif_vs_ma} / ${mes_previo}"
      label: "% vs MA"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: vs_ma
      _type_hint: number
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
    minimum_column_width: 60
    series_labels:
      indicadores.periodo_month_name: Mes
      indicadores.head_count: Faltas
      indicadores.head_count_ly: AA
      indicadores.hc_pct_vs_ly: "% Dif AA"
      indicadores.hc_diferencia_ly: Dif vs AA
      mes_previo: MA
      vs_ma: "% vs MA"
      indicadores.ausentismo: Faltas
      indicadores.ausentismo_ly: AA
      indicadores.au_diferencia_ly: Dif vs AA
      indicadores.au_pct_vs_ly: "% vs AA"
    series_cell_visualizations:
      indicadores.head_count:
        is_active: false
    header_font_color: "#FFFFFF"
    header_background_color: "#B42F37"
    defaults_version: 1
    hidden_fields: [dif_vs_ma]
    listen:
      Division Envases: indicadores.division_envases
      Periodo: calendario.sel_periodo
      Subdivision: indicadores.subdivision
    row: 2
    col: 16
    width: 8
    height: 6
  - title: BAJAS Y ROTACION
    name: BAJAS Y ROTACION
    model: ti_rrhh
    explore: indicadores
    type: looker_grid
    fields: [indicadores.periodo_month_name, indicadores.bajas, indicadores.bajas_ly,
      indicadores.bj_diferencia_ly, indicadores.bj_pct_vs_ly, indicadores.rotacion]
    filters:
      indicadores.bajas: not 0
    sorts: [indicadores.periodo_month_name]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: offset(${indicadores.bajas}, -1)
      label: Mes Previo
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: mes_previo
      _type_hint: number
    - category: table_calculation
      expression: "(${indicadores.bajas} - ${mes_previo})"
      label: Dif vs MA
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: dif_vs_ma
      _type_hint: number
    - category: table_calculation
      expression: "${dif_vs_ma} / ${mes_previo}"
      label: "% vs MA"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: vs_ma
      _type_hint: number
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
    minimum_column_width: 50
    series_labels:
      indicadores.periodo_month_name: Mes
      indicadores.head_count: HC
      indicadores.head_count_ly: AA
      indicadores.hc_pct_vs_ly: "% Dif AA"
      indicadores.hc_diferencia_ly: Dif vs AA
      mes_previo: MA
      vs_ma: "% vs MA"
      indicadores.bj_diferencia_ly: Dif vs AA
      indicadores.bj_pct_vs_ly: "% vs AA"
      indicadores.bajas_ly: AA
    series_cell_visualizations:
      indicadores.head_count:
        is_active: false
    header_font_color: "#FFFFFF"
    header_background_color: "#4276BE"
    defaults_version: 1
    hidden_fields: [dif_vs_ma, mes_previo]
    listen:
      Division Envases: indicadores.division_envases
      Periodo: calendario.sel_periodo
      Subdivision: indicadores.subdivision
    row: 2
    col: 8
    width: 8
    height: 6
  - title: ROTACION
    name: ROTACION
    model: ti_rrhh
    explore: indicadores
    type: looker_column
    fields: [indicadores.periodo_month_name, indicadores.rotacion]
    filters:
      indicadores.bajas: not 0
    sorts: [indicadores.periodo_month_name]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: offset(${indicadores.bajas}, -1)
      label: Mes Previo
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: mes_previo
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "(${indicadores.bajas} - ${mes_previo})"
      label: Dif vs MA
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: dif_vs_ma
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "${dif_vs_ma} / ${mes_previo}"
      label: "% vs MA"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: vs_ma
      _type_hint: number
      is_disabled: true
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
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: indicadores.bajas, id: indicadores.bajas,
            name: Bajas}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: left,
        series: [{axisId: indicadores.rotacion, id: indicadores.rotacion, name: Rotacion}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      indicadores.rotacion: line
    series_colors:
      indicadores.bajas: "#4276BE"
      indicadores.rotacion: "#B42F37"
    series_labels:
      indicadores.periodo_month_name: Mes
      indicadores.head_count: HC
      indicadores.head_count_ly: AA
      indicadores.hc_pct_vs_ly: "% Dif AA"
      indicadores.hc_diferencia_ly: Dif vs AA
      mes_previo: MA
      vs_ma: "% vs MA"
      indicadores.bj_diferencia_ly: Dif vs AA
      indicadores.bj_pct_vs_ly: "% vs AA"
      indicadores.bajas_ly: AA
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
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
    minimum_column_width: 50
    series_cell_visualizations:
      indicadores.head_count:
        is_active: false
    header_font_color: "#FFFFFF"
    header_background_color: "#4276BE"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Division Envases: indicadores.division_envases
      Periodo: calendario.sel_periodo
      Subdivision: indicadores.subdivision
    row: 8
    col: 8
    width: 8
    height: 6
  - title: HC VS AA
    name: HC VS AA
    model: ti_rrhh
    explore: indicadores
    type: looker_column
    fields: [indicadores.periodo_month_name, indicadores.head_count, indicadores.head_count_ly]
    filters:
      indicadores.head_count: not 0
    sorts: [indicadores.periodo_month_name]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: offset(${indicadores.head_count}, -1)
      label: Mes Previo
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: mes_previo
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "(${indicadores.head_count} - ${mes_previo})"
      label: Dif vs MA
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: dif_vs_ma
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "${dif_vs_ma} / ${mes_previo}"
      label: "% vs MA"
      value_format:
      value_format_name: percent_2
      _kind_hint: dimension
      table_calculation: vs_ma
      _type_hint: number
      is_disabled: true
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
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels:
      indicadores.periodo_month_name: Mes
      indicadores.head_count: HC
      indicadores.head_count_ly: AA
      indicadores.hc_pct_vs_ly: "% Dif AA"
      indicadores.hc_diferencia_ly: Dif vs AA
      mes_previo: MA
      vs_ma: "% vs MA"
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
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
    minimum_column_width: 60
    series_cell_visualizations:
      indicadores.head_count:
        is_active: false
    header_font_color: "#FFFFFF"
    header_background_color: "#B42F37"
    defaults_version: 1
    hidden_fields: []
    listen:
      Division Envases: indicadores.division_envases
      Periodo: calendario.sel_periodo
      Subdivision: indicadores.subdivision
    row: 8
    col: 0
    width: 8
    height: 6
  - title: AUSENTISMO
    name: AUSENTISMO (2)
    model: ti_rrhh
    explore: indicadores
    type: looker_line
    fields: [indicadores.periodo_month_name, indicadores.ausentismo, indicadores.ausentismo_ly]
    filters:
      indicadores.ausentismo: not 0
    sorts: [indicadores.periodo_month_name]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: offset(${indicadores.ausentismo}, -1)
      label: Mes Previo
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: mes_previo
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "(${indicadores.ausentismo} - ${mes_previo})"
      label: Dif vs MA
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      table_calculation: dif_vs_ma
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "${dif_vs_ma} / ${mes_previo}"
      label: "% vs MA"
      value_format:
      value_format_name: percent_2
      _kind_hint: dimension
      table_calculation: vs_ma
      _type_hint: number
      is_disabled: true
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
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels:
      indicadores.periodo_month_name: Mes
      indicadores.head_count: Faltas
      indicadores.head_count_ly: AA
      indicadores.hc_pct_vs_ly: "% Dif AA"
      indicadores.hc_diferencia_ly: Dif vs AA
      mes_previo: MA
      vs_ma: "% vs MA"
      indicadores.ausentismo: Faltas
      indicadores.ausentismo_ly: AA
      indicadores.au_diferencia_ly: Dif vs AA
      indicadores.au_pct_vs_ly: "% vs AA"
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
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
    minimum_column_width: 60
    series_cell_visualizations:
      indicadores.head_count:
        is_active: false
    header_font_color: "#FFFFFF"
    header_background_color: "#B42F37"
    defaults_version: 1
    hidden_fields: []
    listen:
      Division Envases: indicadores.division_envases
      Periodo: calendario.sel_periodo
      Subdivision: indicadores.subdivision
    row: 8
    col: 16
    width: 8
    height: 6
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
    explore: indicadores
    listens_to_filters: []
    field: calendario.sel_periodo
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
    explore: indicadores
    listens_to_filters: []
    field: indicadores.division_envases
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
    explore: indicadores
    listens_to_filters: [Division Envases]
    field: indicadores.subdivision
