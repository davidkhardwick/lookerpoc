view: spinrite_report {
  sql_table_name: `data-warehouse-249016.Orion_data_warehouse_views.spinrite_report`
    ;;

  dimension: custom_reference {
    type: string
    sql: ${TABLE}.custom_reference ;;
  }

  dimension: depositor_order_number {
    type: string
    sql: ${TABLE}.depositor_order_number ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_status {
    type: string
    sql: ${TABLE}.order_status ;;
  }

  dimension: order_type {
    type: string
    sql: ${TABLE}.order_type ;;
  }

  dimension: purchase_order_number {
    type: string
    sql: ${TABLE}.purchase_order_number ;;
  }

  dimension: shipment_number {
    type: string
    sql: ${TABLE}.shipment_number ;;
  }

  dimension: shipped_quantity {
    type: number
    sql: ${TABLE}.shipped_quantity ;;
  }

  dimension: shipper_name {
    type: string
    sql: ${TABLE}.shipper_name ;;
  }

  dimension: tracking_number {
    type: string
    sql: ${TABLE}.tracking_number ;;
  }

  measure: count {
    type: count
    drill_fields: [shipper_name]
  }

  measure: total_shipped_quantity {
    type: sum
    sql: ${shipped_quantity} ;;
    drill_fields: [shipment_number, shipper_name, tracking_number]
  }
}
