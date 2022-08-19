view: shopify_products {
  sql_table_name: `@{schema}.shopify_products`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: admin_graphql_api_id {
    type: string
    sql: ${TABLE}.admin_graphql_api_id ;;
  }

  dimension: body_html {
    type: string
    sql: ${TABLE}.body_html ;;
  }

  dimension_group: created_at {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: handle {
    type: string
    sql: ${TABLE}.handle ;;
  }

  dimension: image__admin_graphql_api_id {
    type: string
    sql: ${TABLE}.image.admin_graphql_api_id ;;
    group_label: "Image"
    group_item_label: "Admin Graphql API ID"
  }

  dimension: image__alt {
    type: string
    sql: ${TABLE}.image.alt ;;
    group_label: "Image"
    group_item_label: "Alt"
  }

  dimension_group: image__created {
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
    sql: ${TABLE}.image.created_at ;;
  }

  dimension: image__height {
    type: number
    sql: ${TABLE}.image.height ;;
    group_label: "Image"
    group_item_label: "Height"
  }

  dimension: image__id {
    type: number
    sql: ${TABLE}.image.id ;;
    group_label: "Image"
    group_item_label: "ID"
  }

  dimension: image__position {
    type: number
    sql: ${TABLE}.image.position ;;
    group_label: "Image"
    group_item_label: "Position"
  }

  dimension: image__product_id {
    type: number
    sql: ${TABLE}.image.product_id ;;
    group_label: "Image"
    group_item_label: "Product ID"
  }

  dimension: image__src {
    type: string
    sql: ${TABLE}.image.src ;;
    group_label: "Image"
    group_item_label: "Src"
  }

  dimension_group: image__updated {
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
    sql: ${TABLE}.image.updated_at ;;
  }

  dimension: image__variant_ids {
    hidden: yes
    sql: ${TABLE}.image.variant_ids ;;
    group_label: "Image"
    group_item_label: "Variant Ids"
  }

  dimension: image__width {
    type: number
    sql: ${TABLE}.image.width ;;
    group_label: "Image"
    group_item_label: "Width"
  }

  dimension: images {
    hidden: yes
    sql: ${TABLE}.images ;;
  }

  dimension: options {
    hidden: yes
    sql: ${TABLE}.options ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension_group: published {
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
    sql: ${TABLE}.published_at ;;
  }

  dimension: published_scope {
    type: string
    sql: ${TABLE}.published_scope ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: template_suffix {
    type: string
    sql: ${TABLE}.template_suffix ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension_group: updated_at {
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: variants {
    hidden: yes
    sql: ${TABLE}.variants ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

view: shopify_products__images {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: id ;;
  }

  dimension: admin_graphql_api_id {
    type: string
    sql: admin_graphql_api_id ;;
  }

  dimension: alt {
    type: string
    sql: alt ;;
  }

  dimension_group: created {
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
    sql: created_at ;;
  }

  dimension: height {
    type: number
    sql: height ;;
  }

  dimension: position {
    type: number
    sql: position ;;
  }

  dimension: product_id {
    type: number
    sql: product_id ;;
  }

  dimension: shopify_products__images {
    type: string
    hidden: yes
    sql: shopify_products__images ;;
  }

  dimension: src {
    type: string
    sql: src ;;
  }

  dimension_group: updated {
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
    sql: updated_at ;;
  }

  dimension: variant_ids {
    hidden: yes
    sql: variant_ids ;;
  }

  dimension: width {
    type: number
    sql: width ;;
  }
}

view: shopify_products__options {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: id ;;
  }

  dimension: name {
    type: string
    sql: name ;;
  }

  dimension: position {
    type: number
    sql: position ;;
  }

  dimension: product_id {
    type: number
    sql: product_id ;;
  }

  dimension: shopify_products__options {
    type: string
    hidden: yes
    sql: shopify_products__options ;;
  }

  dimension: values {
    hidden: yes
    sql: values ;;
  }
}

view: shopify_products__variants {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: id ;;
  }

  dimension: admin_graphql_api_id {
    type: string
    sql: admin_graphql_api_id ;;
  }

  dimension: barcode {
    type: string
    sql: barcode ;;
  }

  dimension: compare_at_price {
    type: string
    sql: compare_at_price ;;
  }

  dimension_group: created {
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
    sql: created_at ;;
  }

  dimension: fulfillment_service {
    type: string
    sql: fulfillment_service ;;
  }

  dimension: grams {
    type: number
    sql: grams ;;
  }

  dimension: image_id {
    type: string
    sql: image_id ;;
  }

  dimension: inventory_item_id {
    type: number
    sql: inventory_item_id ;;
  }

  dimension: inventory_management {
    type: string
    sql: inventory_management ;;
  }

  dimension: inventory_policy {
    type: string
    sql: inventory_policy ;;
  }

  dimension: inventory_quantity {
    type: number
    sql: inventory_quantity ;;
  }

  dimension: old_inventory_quantity {
    type: number
    sql: old_inventory_quantity ;;
  }

  dimension: option1 {
    type: string
    sql: option1 ;;
  }

  dimension: option2 {
    type: string
    sql: option2 ;;
  }

  dimension: option3 {
    type: string
    sql: option3 ;;
  }

  dimension: position {
    type: number
    sql: position ;;
  }

  dimension: price {
    type: number
    sql: price ;;
  }

  dimension: product_id {
    type: number
    sql: product_id ;;
  }

  dimension: requires_shipping {
    type: yesno
    sql: requires_shipping ;;
  }

  dimension: shopify_products__variants {
    type: string
    hidden: yes
    sql: shopify_products__variants ;;
  }

  dimension: sku {
    type: string
    sql: sku ;;
  }

  dimension: taxable {
    type: yesno
    sql: taxable ;;
  }

  dimension: title {
    type: string
    sql: title ;;
  }

  dimension_group: updated {
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
    sql: updated_at ;;
  }

  dimension: weight {
    type: number
    sql: weight ;;
  }

  dimension: weight_unit {
    type: string
    sql: weight_unit ;;
  }
}

view: shopify_products__options__values {
  dimension: shopify_products__options__values {
    type: string
    sql: shopify_products__options__values ;;
  }
}

view: shopify_products__image__variant_ids {
  dimension: shopify_products__image__variant_ids {
    type: string
    sql: shopify_products__image__variant_ids ;;
  }
}

view: shopify_products__images__variant_ids {
  dimension: shopify_products__images__variant_ids {
    type: string
    sql: shopify_products__images__variant_ids ;;
  }
}
