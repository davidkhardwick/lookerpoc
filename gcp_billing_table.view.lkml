view: gcp_billing_table {
  derived_table: {
    sql: SELECT invoice.month, project.id, project.name, service.id, service.description FROM `data-warehouse-249016.gcp_billing.gcp_billing_export_v1_01E0CE_3B3FD2_2A096E`  LIMIT 100
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: id_1 {
    type: string
    sql: ${TABLE}.id_1 ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  set: detail {
    fields: [month, id, name, id_1, description]
  }
}
