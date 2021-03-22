view: order_items {
  sql_table_name: `data-warehouse-249016.STORD_denormalized.order_items`
    ;;

  dimension: custom_name {
    type: string
    sql: ${TABLE}.custom_name ;;
  }

  dimension_group: date_created {
    type: time
    timeframes: [
      raw,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_created ;;
  }

  dimension_group: date_updated {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_updated ;;
  }

  dimension_group: datetime_created {
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
    sql: ${TABLE}.datetime_created ;;
  }

  dimension_group: datetime_updated {
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
    sql: ${TABLE}.datetime_updated ;;
  }

  dimension: facility_id {
    type: number
    sql: ${TABLE}.facility_id ;;
  }

  dimension: facility_name {
    type: string
    sql: ${TABLE}.facility_name ;;
  }

  dimension: height {
    type: string
    sql: ${TABLE}.height ;;
  }

  dimension: length {
    type: string
    sql: ${TABLE}.length ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_type {
    type: string
    sql: ${TABLE}.order_type ;;
  }

  dimension: product_lot_id {
    type: number
    sql: ${TABLE}.product_lot_id ;;
  }

  dimension: product_lots_number {
    type: string
    sql: ${TABLE}.product_lots_number ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: product_status {
    type: number
    sql: ${TABLE}.product_status ;;
  }

  dimension: product_weight {
    type: string
    sql: ${TABLE}.product_weight ;;
  }

  dimension: product_weight_uom {
    type: number
    sql: ${TABLE}.product_weight_uom ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  # dimension_group: scheduled {
  #   type: time
  #   timeframes: [
  #     raw,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   convert_tz: no
  #   datatype: date
  #   sql: ${TABLE}.scheduled_date ;;
  # }

  dimension_group: scheduled {
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
    sql: ${TABLE}.scheduled_time ;;
  }

  dimension: shipper_name {
    type: string
    sql: ${TABLE}.shipper_name ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: spatial_uom {
    type: number
    sql: ${TABLE}.spatial_uom ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}.supplier_name ;;
  }

  dimension_group: time_created {
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
    sql: ${TABLE}.time_created ;;
  }

  dimension_group: time_updated {
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
    sql: ${TABLE}.time_updated ;;
  }

  dimension: uom {
    type: string
    sql: ${TABLE}.uom ;;
  }

  dimension: width {
    type: string
    sql: ${TABLE}.width ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total_quantity {
    type: sum
    sql: ${quantity} ;;
    drill_fields: [custom_name, date_created_date, quantity, retail_price]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      custom_name,
      supplier_name,
      product_name,
      facility_name,
      shipper_name,
      orders.custom_name,
      orders.shipper_name,
      orders.order_id
    ]
  }
}
