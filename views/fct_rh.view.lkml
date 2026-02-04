view: fct_rh {
  derived_table: {
    sql: SELECT
        MED.PERNR CodigoPersonal,
        MED.BEGDA Inicio,
        MED.ENDDA Fin,
        MED.MASSN IDClaseMedida,
        CLS.MNTXT ClaseMedida,
        MED.MASSG IDMotivoMedida,
        MOT.MGTXT MotivoMedida,
        CASE WHEN STAT2 = '3' THEN 'Activo' ELSE 'Inactivo' END Estatus,
        ASG.BUKRS IDSociedad,
        SOC.BUTXT Sociedad,
        ASG.WERKS IDDivision,
        DIV.NAME1 Division,
        ASG.BTRTL IDSubdivision,
        SDV.BTEXT Subdivision,
        CCS.LTEXT CentroCostos,
        CASE
        WHEN SUBSTR(ASG.KOSTL,2,1) = 'A' THEN 'ALU'
        WHEN SUBSTR(ASG.KOSTL,2,1) = 'P' THEN 'PET'
        WHEN SUBSTR(ASG.KOSTL,2,1) = 'F' THEN 'ALG'
        WHEN SUBSTR(ASG.KOSTL,2,1) = 'C' THEN 'CORP'
        ELSE 'OTRO' END DIV_ENVASES,
        UOR.ORGTX UnidadOrganizativa,
        POS.PLSTX Posicion,
        CASE WHEN DPR.GESCH = '1' THEN 'Masculino' ELSE 'Femenino' END Sexo,
        DPR.GBDAT Nacimiento,
        DPR.GBLND PaisNacimiento,
        RMN.BET01 SalarioSemanal,
        DPR.GBDAT,
        DATE_ADD(CURRENT_DATE(), INTERVAL -1 DAY) ACTUALIZACION
      FROM
        `envases-analytics-eon-poc.RAW_CPI_RRHH_MX.PA0000_MEDIDAS` MED
        LEFT JOIN `envases-analytics-eon-poc.RAW_CPI_RRHH_MX.cat_clase_medida` CLS ON
          MED.MASSN = CLS.MASSN
        LEFT JOIN `envases-analytics-eon-poc.RAW_CPI_RRHH_MX.cat_motivo_medida` MOT ON
          MED.MASSG = MOT.MASSG AND MED.MASSN = MOT.MASSN
        LEFT JOIN `envases-analytics-eon-poc.RAW_CPI_RRHH_MX.PA0001_ASIGNACION` ASG ON
          MED.PERNR = ASG.PERNR AND ASG.BEGDA >= MED.BEGDA AND ASG.ENDDA <= MED.ENDDA
        LEFT JOIN `envases-analytics-eon-poc.RAW_CPI_RRHH_MX.cat_sociedades` SOC ON
          ASG.BUKRS = SOC.BUKRS
        LEFT JOIN `envases-analytics-eon-poc.RAW_CPI_RRHH_MX.cat_div_personal` DIV ON
          ASG.WERKS = DIV.PERSA
        LEFT JOIN `envases-analytics-eon-poc.RAW_CPI_RRHH_MX.cat_subdiv_personal` SDV ON
          ASG.BTRTL = SDV.BTRTL
        LEFT JOIN `envases-analytics-eon-poc.RAW_CPI_RRHH_MX.cat_cecos` CCS ON
          ASG.KOSTL = CCS.KOSTL
        LEFT JOIN `envases-analytics-eon-poc.RAW_CPI_RRHH_MX.cat_unidad_organizativa` UOR ON
          ASG.ORGEH = CAST(UOR.ORGE AS NUMERIC)
        LEFT JOIN `envases-analytics-eon-poc.RAW_CPI_RRHH_MX.cat_posiciones` POS ON
          ASG.PLANS = CAST(POS.PLANS AS NUMERIC)
        LEFT JOIN `envases-analytics-eon-poc.RAW_CPI_RRHH_MX.PA0002_DATOS_PERS` DPR ON
          MED.PERNR = DPR.PERNR AND DPR.BEGDA >= MED.BEGDA AND DPR.ENDDA <= MED.ENDDA
        LEFT JOIN `envases-analytics-eon-poc.RAW_CPI_RRHH_MX.PA0008_REMUNERACIONES` RMN ON
          MED.PERNR = RMN.PERNR AND RMN.BEGDA >= MED.BEGDA AND RMN.ENDDA <= MED.ENDDA
      order by 1,2,3 ;;
  }


  dimension: division_envases {
    label: "División de Envases"
    description: "Nombre de la división de Envases"
    type: string
    sql: ${TABLE}.DIV_ENVASES ;;
  }

  dimension: codigo_personal {
    type: string
    sql: ${TABLE}.CodigoPersonal ;;
  }


  dimension_group: inicio {
    type: time
    timeframes: [raw, date, week, month, quarter, year,month_name]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Inicio ;;
  }


  filter: date_filter {
    label: "Período"
    description: "Use this date filter in combination with the timeframes dimension for dynamic date filtering"
    type: date
    default_value: "[hoy]"
    # default_value: "6 weeks"
    # este es un filtro de fecha

  }





  ##################Año ############################

  dimension: is_current_month {
    hidden: yes
    type: yesno
    sql: ${inicio_date} >= DATE_TRUNC(DATE({% date_start date_filter %}), MONTH)
      AND ${inicio_date} <= DATE_TRUNC(DATE({% date_start date_filter %}), DAY);;
  }




  dimension: is_current_year {
    hidden: yes
    type: yesno
    sql: ${inicio_date} >= CAST(CONCAT(CAST(EXTRACT(YEAR FROM DATE ({% date_start date_filter %})) AS STRING),"-01-01")  AS DATE) and  ${inicio_date} <= DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), DAY)   ;;
    #DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), YEAR);;  FECHA         DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), MONTH)
  }

  dimension: is_previous_year {
    hidden: yes
    type: yesno
    sql: ${inicio_date} >= CAST(CONCAT(CAST(EXTRACT(YEAR FROM DATE ({% date_start date_filter %})) -1 AS STRING),"-01-01")  AS DATE) and  ${inicio_date} <= DATE_ADD(DATE_ADD( DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), DAY),INTERVAL -1 year),INTERVAL -0 day)   ;;
    #DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), YEAR);;  FECHA         DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), MONTH)
  }




  measure: Importe {
    type: sum
    sql: ${salario_semanal} ;;
    drill_fields: [subdivision, centro_costos, unidad_organizativa, posicion, year, Importe]
    filters: {
      field: is_current_year
      value: "yes"
    }

  }



  measure: Importe_TODO {
    type: sum
    sql: ${salario_semanal} ;;
  }

  measure: CONTEO_TODO {
    type: count_distinct
    sql: ${codigo_personal} ;;
  }


  measure: year_select {
    type: string
    sql: DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), YEAR) ;;
  }


  dimension: order_year {
    type: number
    sql: EXTRACT(YEAR FROM CAST({% date_start date_filter %} AS DATE)) ;;
  }

  measure: fecha_ultimo {
    type: date
    sql: MAX(${actualizacion});;
    convert_tz: no
  }

  dimension: actualizacion {
    type: date
    sql: ${TABLE}.ACTUALIZACION ;;
  }



  measure: ult_act {
    type: date
    label: "Update date"
    sql: MAX(${actualizacion});;
    convert_tz: no
  }



  measure: Mensual{
    type: count_distinct
    sql: ${codigo_personal} ;;
    filters: {
      field: is_current_month
      value: "yes"
    }
  }


  measure: year{
    type: count
    drill_fields: [subdivision, centro_costos, unidad_organizativa, posicion, year, Importe]

    filters: {
      field: is_current_year
      value: "yes"
    }

  }

  measure: lyear{
    type: count

    filters: {
      field: is_previous_year
      value: "yes"
    }
  }


  measure: Diferencia {
    type: number
    sql: ${year}-${lyear} ;;
  }


  dimension: fin {
    type: date
    datatype: date
    sql: ${TABLE}.Fin ;;
  }

  dimension: idclase_medida {
    type: string
    sql: ${TABLE}.IDClaseMedida ;;
  }

  dimension: clase_medida {
    type: string
    sql: ${TABLE}.ClaseMedida ;;
  }

  dimension: idmotivo_medida {
    type: string
    sql: ${TABLE}.IDMotivoMedida ;;
  }

  dimension: motivo_medida {
    type: string
    sql: ${TABLE}.MotivoMedida ;;
  }

  dimension: estatus {
    type: string
    sql: ${TABLE}.Estatus ;;
  }

  dimension: idsociedad {
    type: string
    sql: ${TABLE}.IDSociedad ;;
  }

  dimension: sociedad {
    type: string
    sql: ${TABLE}.Sociedad ;;
  }

  dimension: iddivision {
    type: string
    sql: ${TABLE}.IDDivision ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.Division ;;
  }

  dimension: idsubdivision {
    type: string
    sql: ${TABLE}.IDSubdivision ;;
  }

  dimension: subdivision {
    type: string
    sql: ${TABLE}.Subdivision ;;
  }

  dimension: centro_costos {
    type: string
    sql: ${TABLE}.CentroCostos ;;
  }

  dimension: unidad_organizativa {
    type: string
    sql: ${TABLE}.UnidadOrganizativa ;;
  }

  dimension: posicion {
    type: string
    sql: ${TABLE}.Posicion ;;
  }

  dimension: sexo {
    type: string
    sql: ${TABLE}.Sexo ;;
  }

  dimension: nacimiento {
    type: date
    datatype: date
    sql: ${TABLE}.Nacimiento ;;
  }

  dimension: pais_nacimiento {
    type: string
    sql: ${TABLE}.PaisNacimiento ;;
  }

  dimension: salario_semanal {
    type: number
    sql: ${TABLE}.SalarioSemanal ;;
  }

  dimension: gbdat {
    type: date
    datatype: date
    sql: ${TABLE}.GBDAT ;;
  }
}
