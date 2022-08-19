view: shopify_countries {
  sql_table_name: `user_david_t0jn.shopify_countries`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: provinces {
    hidden: yes
    sql: ${TABLE}.provinces ;;
  }

  dimension: tax {
    type: number
    sql: ${TABLE}.tax ;;
  }

  dimension: tax_name {
    type: string
    sql: ${TABLE}.tax_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, tax_name, name]
  }
}

view: shopify_countries__provinces {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: id ;;
  }

  dimension: code {
    type: string
    sql: code ;;
  }

  dimension: country_id {
    type: number
    sql: country_id ;;
  }

  dimension: name {
    type: string
    sql: name ;;
  }

  dimension: shipping_zone_id {
    type: number
    sql: shipping_zone_id ;;
  }

  dimension: shopify_countries__provinces {
    type: string
    hidden: yes
    sql: shopify_countries__provinces ;;
  }

  dimension: tax {
    type: number
    sql: tax ;;
  }

  dimension: tax_name {
    type: string
    sql: tax_name ;;
  }

  dimension: tax_percentage {
    type: number
    sql: tax_percentage ;;
  }

  dimension: tax_type {
    type: string
    sql: tax_type ;;
  }
}
