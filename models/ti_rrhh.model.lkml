connection: "@{CONNECTION_NAME}"

# include all the views and dashboards
include: "/views/*.view.lkml"
include: "/dashboards/*.dashboard"

datagroup: alg_recursos_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: alg_recursos_default_datagroup

explore: indicadores {
  join: calendario {
    type: inner
    relationship: many_to_one
    sql_on: ${indicadores.periodo_raw} = ${calendario.periodo_raw} ;;
  }
}
explore: vw_complemento_capacitacion_vacantes {}
explore: vw_complemento_ausentismos_accidentes {
  join: calendario {
    type: inner
    relationship: many_to_one
    sql_on: ${vw_complemento_ausentismos_accidentes.periodo_raw} = ${calendario.periodo_raw};;
  }
}
explore: plantilla {
  join: calendario {
    type: inner
    relationship: many_to_one
    sql_on: ${plantilla.periodo_raw} = ${calendario.periodo_raw};;
  }
}
explore: complemento_nomina {
  join: calendario_nomina {
    type: inner
    relationship: many_to_one
    sql_on: ${calendario_nomina.fecha_raw} = ${complemento_nomina.fecha_pago_raw} ;;
  }
}
