connection: "looker-bq-poc"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: spinrite_report {}

explore: order_items {
######## EXAMPLE: USER ATTRIBUTE TO FILTER CONTENT ##################
  # access_filter: {
  #   field: order_items.order_type
  #   user_attribute: order_type_demo_filter
  # }

######## EXAMPLE: JOIN TO ORDERS TABLE ################
  # join: orders {
  #   type: left_outer
  #   relationship: many_to_one
  #   sql_on: ${orders.order_id} = ${order_items.order_id} ;;
  # }
}
