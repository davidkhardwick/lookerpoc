view: companies {
  sql_table_name: `data-warehouse-249016.STORD_denormalized.companies`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: company_updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.company_updated_at ;;
  }

  dimension: is_shipper {
    type: yesno
    sql: ${TABLE}.is_shipper ;;
  }

  dimension: is_supplier {
    type: yesno
    sql: ${TABLE}.is_supplier ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
