include: "/views/*.view"


explore: facebook_ad_insights {
  join: facebook_ad_insights__website_ctr {
    view_label: "Facebook Ad Insights: Website Ctr"
    sql: LEFT JOIN UNNEST(${facebook_ad_insights.website_ctr}) as facebook_ad_insights__website_ctr ;;
    relationship: one_to_many
  }
}

explore: shopify_collections {}

explore: shopify_orders {
  join: shopify_orders__refunds {
    view_label: "Shopify Orders: Refunds"
    sql: LEFT JOIN UNNEST(${shopify_orders.refunds}) as shopify_orders__refunds ;;
    relationship: one_to_many
  }

  join: shopify_orders__tax_lines {
    view_label: "Shopify Orders: Tax Lines"
    sql: LEFT JOIN UNNEST(${shopify_orders.tax_lines}) as shopify_orders__tax_lines ;;
    relationship: one_to_many
  }

  join: shopify_orders__line_items {
    view_label: "Shopify Orders: Line Items"
    sql: LEFT JOIN UNNEST(${shopify_orders.line_items}) as shopify_orders__line_items ;;
    relationship: one_to_many
  }

  join: shopify_orders__shipping_lines {
    view_label: "Shopify Orders: Shipping Lines"
    sql: LEFT JOIN UNNEST(${shopify_orders.shipping_lines}) as shopify_orders__shipping_lines ;;
    relationship: one_to_many
  }

  join: shopify_orders__discount_codes {
    view_label: "Shopify Orders: Discount Codes"
    sql: LEFT JOIN UNNEST(${shopify_orders.discount_codes}) as shopify_orders__discount_codes ;;
    relationship: one_to_many
  }

  join: shopify_orders__note_attributes {
    view_label: "Shopify Orders: Note Attributes"
    sql: LEFT JOIN UNNEST(${shopify_orders.note_attributes}) as shopify_orders__note_attributes ;;
    relationship: one_to_many
  }

  join: shopify_orders__line_items__duties {
    view_label: "Shopify Orders: Line Items Duties"
    sql: LEFT JOIN UNNEST(${shopify_orders__line_items.duties}) as shopify_orders__line_items__duties ;;
    relationship: one_to_many
  }

  join: shopify_orders__refunds__transactions {
    view_label: "Shopify Orders: Refunds Transactions"
    sql: LEFT JOIN UNNEST(${shopify_orders__refunds.transactions}) as shopify_orders__refunds__transactions ;;
    relationship: one_to_many
  }

  join: shopify_orders__payment_gateway_names {
    view_label: "Shopify Orders: Payment Gateway Names"
    sql: LEFT JOIN UNNEST(${shopify_orders.payment_gateway_names}) as shopify_orders__payment_gateway_names ;;
    relationship: one_to_many
  }

  join: shopify_orders__discount_applications {
    view_label: "Shopify Orders: Discount Applications"
    sql: LEFT JOIN UNNEST(${shopify_orders.discount_applications}) as shopify_orders__discount_applications ;;
    relationship: one_to_many
  }

  join: shopify_orders__customer__addresses {
    view_label: "Shopify Orders: Customer Addresses"
    sql: LEFT JOIN UNNEST(${shopify_orders.customer__addresses}) as shopify_orders__customer__addresses ;;
    relationship: one_to_many
  }

  join: shopify_orders__customer__tax_exemptions {
    view_label: "Shopify Orders: Customer Tax Exemptions"
    sql: LEFT JOIN UNNEST(${shopify_orders.customer__tax_exemptions}) as shopify_orders__customer__tax_exemptions ;;
    relationship: one_to_many
  }

  join: shopify_orders__shipping_lines__tax_lines {
    view_label: "Shopify Orders: Shipping Lines Tax Lines"
    sql: LEFT JOIN UNNEST(${shopify_orders__shipping_lines.tax_lines}) as shopify_orders__shipping_lines__tax_lines ;;
    relationship: one_to_many
  }

  join: shopify_orders__line_items__tax_lines {
    view_label: "Shopify Orders: Line Items Tax Lines"
    sql: LEFT JOIN UNNEST(${shopify_orders__line_items.tax_lines}) as shopify_orders__line_items__tax_lines ;;
    relationship: one_to_many
  }

  join: shopify_orders__refunds__refund_line_items {
    view_label: "Shopify Orders: Refunds Refund Line Items"
    sql: LEFT JOIN UNNEST(${shopify_orders__refunds.refund_line_items}) as shopify_orders__refunds__refund_line_items ;;
    relationship: one_to_many
  }

  join: shopify_orders__refunds__order_adjustments {
    view_label: "Shopify Orders: Refunds Order Adjustments"
    sql: LEFT JOIN UNNEST(${shopify_orders__refunds.order_adjustments}) as shopify_orders__refunds__order_adjustments ;;
    relationship: one_to_many
  }

  join: shopify_orders__line_items__properties {
    view_label: "Shopify Orders: Line Items Properties"
    sql: LEFT JOIN UNNEST(${shopify_orders__line_items.properties}) as shopify_orders__line_items__properties ;;
    relationship: one_to_many
  }

  join: shopify_orders__line_items__applied_discounts {
    view_label: "Shopify Orders: Line Items Applied Discounts"
    sql: LEFT JOIN UNNEST(${shopify_orders__line_items.applied_discounts}) as shopify_orders__line_items__applied_discounts ;;
    relationship: one_to_many
  }

  join: shopify_orders__line_items__duties__tax_lines {
    view_label: "Shopify Orders: Line Items Duties Tax Lines"
    sql: LEFT JOIN UNNEST(${shopify_orders__line_items__duties.tax_lines}) as shopify_orders__line_items__duties__tax_lines ;;
    relationship: one_to_many
  }

  join: shopify_orders__line_items__discount_allocations {
    view_label: "Shopify Orders: Line Items Discount Allocations"
    sql: LEFT JOIN UNNEST(${shopify_orders__line_items.discount_allocations}) as shopify_orders__line_items__discount_allocations ;;
    relationship: one_to_many
  }

  join: shopify_orders__payment_terms__payment_schedules {
    view_label: "Shopify Orders: Payment Terms Payment Schedules"
    sql: LEFT JOIN UNNEST(${shopify_orders.payment_terms__payment_schedules}) as shopify_orders__payment_terms__payment_schedules ;;
    relationship: one_to_many
  }
}

explore: shopify_countries {
  join: shopify_countries__provinces {
    view_label: "Shopify Countries: Provinces"
    sql: LEFT JOIN UNNEST(${shopify_countries.provinces}) as shopify_countries__provinces ;;
    relationship: one_to_many
  }
}

explore: shopify_customers {
  join: shopify_customers__addresses {
    view_label: "Shopify Customers: Addresses"
    sql: LEFT JOIN UNNEST(${shopify_customers.addresses}) as shopify_customers__addresses ;;
    relationship: one_to_many
  }

  join: shopify_customers__tax_exemptions {
    view_label: "Shopify Customers: Tax Exemptions"
    sql: LEFT JOIN UNNEST(${shopify_customers.tax_exemptions}) as shopify_customers__tax_exemptions ;;
    relationship: one_to_many
  }
}

explore: shopify_products {
  join: shopify_products__images {
    view_label: "Shopify Products: Images"
    sql: LEFT JOIN UNNEST(${shopify_products.images}) as shopify_products__images ;;
    relationship: one_to_many
  }

  join: shopify_products__options {
    view_label: "Shopify Products: Options"
    sql: LEFT JOIN UNNEST(${shopify_products.options}) as shopify_products__options ;;
    relationship: one_to_many
  }

  join: shopify_products__variants {
    view_label: "Shopify Products: Variants"
    sql: LEFT JOIN UNNEST(${shopify_products.variants}) as shopify_products__variants ;;
    relationship: one_to_many
  }

  join: shopify_products__options__values {
    view_label: "Shopify Products: Options Values"
    sql: LEFT JOIN UNNEST(${shopify_products__options.values}) as shopify_products__options__values ;;
    relationship: one_to_many
  }

  join: shopify_products__image__variant_ids {
    view_label: "Shopify Products: Image Variant Ids"
    sql: LEFT JOIN UNNEST(${shopify_products.image__variant_ids}) as shopify_products__image__variant_ids ;;
    relationship: one_to_many
  }

  join: shopify_products__images__variant_ids {
    view_label: "Shopify Products: Images Variant Ids"
    sql: LEFT JOIN UNNEST(${shopify_products__images.variant_ids}) as shopify_products__images__variant_ids ;;
    relationship: one_to_many
  }
}
