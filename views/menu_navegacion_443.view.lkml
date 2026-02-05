view: menu_navegacion_443 {

  dimension: button_accidentes {
    label: "Accidentes"
    type: string
    sql: 'Accidentes' ;;

    link: {
      label: "Accidentes"
      url: "https://envasesdirecto.cloud.looker.com/dashboards/483?Periodo={{ _filters['calendario.sel_periodo'] | url_encode}}&Codigo+Pais={{ _filters['codigo_pais'] | url_encode}}&Division={{ _filters['division_envases'] | url_encode}}&Sociedad={{ _filters['sociedad'] | url_encode}}&Centro={{ _filters['subdivision'] | url_encode}}"
    }
  }


  dimension: button_altas {
    label: "Altas"
    type: string
    sql: 'Altas  ' ;;

    link: {
      label: "Altas"
      url: "https://envasesdirecto.cloud.looker.com/dashboards/482?Periodo={{ _filters['calendario.sel_periodo'] | url_encode}}&Codigo+Pais={{ _filters['codigo_pais'] | url_encode}}&Division={{ _filters['division_envases'] | url_encode}}&Sociedad={{ _filters['sociedad'] | url_encode}}&Centro={{ _filters['subdivision'] | url_encode}}"
    }
  }


  dimension: button_ausentismos {
    label: "Ausentismos"
    type: string
    sql: 'Ausentismos' ;;

    link: {
      label: "Ausentismos"
      url: "https://envasesdirecto.cloud.looker.com/dashboards/485?Periodo={{ _filters['calendario.sel_periodo'] | url_encode}}&Codigo+Pais={{ _filters['codigo_pais'] | url_encode}}&Division={{ _filters['division_envases'] | url_encode}}&Sociedad={{ _filters['sociedad'] | url_encode}}&Centro={{ _filters['subdivision'] | url_encode}}"
    }
  }


  dimension: button_bajas {
    label: "Bajas"
    type: string
    sql: 'Bajas' ;;

    link: {
      label: "Bajas"
      url: "https://envasesdirecto.cloud.looker.com/dashboards/486?Periodo={{ _filters['calendario.sel_periodo'] | url_encode}}&Codigo+Pais={{ _filters['codigo_pais'] | url_encode}}&Division={{ _filters['division_envases'] | url_encode}}&Sociedad={{ _filters['sociedad'] | url_encode}}&Centro={{ _filters['subdivision'] | url_encode}}"
    }
  }


  dimension: button_capacitacion {
    label: "Capacitacion"
    type: string
    sql: 'Capacitación' ;;

    link: {
      label: "Capacitación"
      url: "https://envasesdirecto.cloud.looker.com/dashboards/487?Periodo={{ _filters['calendario.sel_periodo'] | url_encode}}&Codigo+Pais={{ _filters['codigo_pais'] | url_encode}}&Division={{ _filters['division_envases'] | url_encode}}&Sociedad={{ _filters['sociedad'] | url_encode}}&Centro={{ _filters['subdivision'] | url_encode}}"
    }
  }


  dimension: button_nomina {
    label: "Nomina"
    type: string
    sql: 'Nomina' ;;

    link: {
      label: "Nomina"
      url: "https://envasesdirecto.cloud.looker.com/dashboards/488??Periodo={{ _filters['calendario.sel_periodo'] | url_encode}}&Codigo+Pais={{ _filters['codigo_pais'] | url_encode}}&Division={{ _filters['division_envases'] | url_encode}}&Sociedad={{ _filters['sociedad'] | url_encode}}&Centro={{ _filters['subdivision'] | url_encode}}"
    }
  }


  dimension: button_plantilla {
    label: "Plantilla por compañia"
    type: string
    sql: 'Plantilla' ;;

    link: {
      label: "Plantilla por compañia"
      url: "https://envasesdirecto.cloud.looker.com/dashboards/489?Periodo={{ _filters['calendario.sel_periodo'] | url_encode}}&Codigo+Pais={{ _filters['codigo_pais'] | url_encode}}&Division={{ _filters['division_envases'] | url_encode}}&Sociedad={{ _filters['sociedad'] | url_encode}}&Centro={{ _filters['subdivision'] | url_encode}}"
    }
    link: {
      label: "Plantilla por generación"
      url: "https://envasesdirecto.cloud.looker.com/dashboards/490?Periodo={{ _filters['calendario.sel_periodo'] | url_encode}}&Codigo+Pais={{ _filters['codigo_pais'] | url_encode}}&Division={{ _filters['division_envases'] | url_encode}}&Sociedad={{ _filters['sociedad'] | url_encode}}&Centro={{ _filters['subdivision'] | url_encode}}"
    }
    link: {
      label: "Plantilla por género"
      url: "https://envasesdirecto.cloud.looker.com/dashboards/491?Periodo={{ _filters['calendario.sel_periodo'] | url_encode}}&Codigo+Pais={{ _filters['codigo_pais'] | url_encode}}&Division={{ _filters['division_envases'] | url_encode}}&Sociedad={{ _filters['sociedad'] | url_encode}}&Centro={{ _filters['subdivision'] | url_encode}}"
    }
  }

  dimension: button_plantilla_generacion {
    label: "Plantilla por generación"
    type: string
    sql: 'Plantilla por generación' ;;

    link: {
      label: "plantilla por generación"
      url: "https://envasesdirectoaddon.cloud.looker.com/dashboards/250?Periodo={{ _filters['calendario.sel_periodo'] | url_encode}}&Codigo+Pais={{ _filters['codigo_pais'] | url_encode}}&Division={{ _filters['division_envases'] | url_encode}}&Sociedad={{ _filters['sociedad'] | url_encode}}&Centro={{ _filters['subdivision'] | url_encode}}"
    }
  }

  dimension: button_plantilla_genero {
    label: "Plantilla por género"
    type: string
    sql: 'Plantilla por género' ;;

    link: {
      label: "plantilla por género"
      url: "https://envasesdirectoaddon.cloud.looker.com/dashboards/251?Periodo={{ _filters['calendario.sel_periodo'] | url_encode}}&Codigo+Pais={{ _filters['codigo_pais'] | url_encode}}&Division={{ _filters['division_envases'] | url_encode}}&Sociedad={{ _filters['sociedad'] | url_encode}}&Centro={{ _filters['subdivision'] | url_encode}}"
    }
  }

  dimension: button_rotacion {
    label: "Rotacion"
    type: string
    sql: 'Rotación';;

    link: {
      label: "Rotación"
      url: "https://envasesdirecto.cloud.looker.com/dashboards/493?Periodo={{ _filters['calendario.sel_periodo'] | url_encode}}&Codigo+Pais={{ _filters['codigo_pais'] | url_encode}}&Division={{ _filters['division_envases'] | url_encode}}&Sociedad={{ _filters['sociedad'] | url_encode}}&Centro={{ _filters['subdivision'] | url_encode}}"
    }
  }

  dimension: button_vacantes {
    label: "Vacantes"
    type: string
    sql: 'Vacantes';;

    link: {
      label: "Vacantes"
      url: "https://envasesdirecto.cloud.looker.com/dashboards/492?Periodo={{ _filters['calendario.sel_periodo'] | url_encode}}&Codigo+Pais={{ _filters['codigo_pais'] | url_encode}}&Division={{ _filters['division_envases'] | url_encode}}&Sociedad={{ _filters['sociedad'] | url_encode}}&Centro={{ _filters['subdivision'] | url_encode}}"
    }
  }

}
