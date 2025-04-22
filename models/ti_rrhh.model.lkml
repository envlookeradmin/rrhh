connection: "@{CONNECTION_NAME}"

# include all the views
include: "/views/**/*.view.lkml"

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
