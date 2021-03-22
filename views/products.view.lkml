view: products {
  sql_table_name: `data-warehouse-249016.STORD_denormalized.products`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension: height {
    type: string
    sql: ${TABLE}.height ;;
  }

  dimension: length {
    type: string
    sql: ${TABLE}.length ;;
  }

  dimension: product_lots_id {
    type: number
    sql: ${TABLE}.product_lots_id ;;
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

  dimension: restock_quantity {
    type: number
    sql: ${TABLE}.restock_quantity ;;
  }

  dimension: restock_uom {
    type: string
    sql: ${TABLE}.restock_uom ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
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

  dimension: track_by_lot {
    type: yesno
    sql: ${TABLE}.track_by_lot ;;
  }

  dimension: width {
    type: string
    sql: ${TABLE}.width ;;
  }

  measure: count {
    type: count
    drill_fields: [id, product_name, shipper_name]
  }
}
