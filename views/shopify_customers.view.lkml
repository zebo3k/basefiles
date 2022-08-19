view: shopify_customers {
  sql_table_name: `user_david_t0jn.shopify_customers`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: accepts_marketing {
    type: yesno
    sql: ${TABLE}.accepts_marketing ;;
  }

  dimension_group: accepts_marketing_updated {
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
    sql: ${TABLE}.accepts_marketing_updated_at ;;
  }

  dimension: addresses {
    hidden: yes
    sql: ${TABLE}.addresses ;;
  }

  dimension: admin_graphql_api_id {
    type: string
    sql: ${TABLE}.admin_graphql_api_id ;;
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: default_address__address1 {
    type: string
    sql: ${TABLE}.default_address.address1 ;;
    group_label: "Default Address"
    group_item_label: "Address1"
  }

  dimension: default_address__address2 {
    type: string
    sql: ${TABLE}.default_address.address2 ;;
    group_label: "Default Address"
    group_item_label: "Address2"
  }

  dimension: default_address__city {
    type: string
    sql: ${TABLE}.default_address.city ;;
    group_label: "Default Address"
    group_item_label: "City"
  }

  dimension: default_address__company {
    type: string
    sql: ${TABLE}.default_address.company ;;
    group_label: "Default Address"
    group_item_label: "Company"
  }

  dimension: default_address__country {
    type: string
    sql: ${TABLE}.default_address.country ;;
    group_label: "Default Address"
    group_item_label: "Country"
  }

  dimension: default_address__country_code {
    type: string
    sql: ${TABLE}.default_address.country_code ;;
    group_label: "Default Address"
    group_item_label: "Country Code"
  }

  dimension: default_address__country_name {
    type: string
    sql: ${TABLE}.default_address.country_name ;;
    group_label: "Default Address"
    group_item_label: "Country Name"
  }

  dimension: default_address__customer_id {
    type: number
    sql: ${TABLE}.default_address.customer_id ;;
    group_label: "Default Address"
    group_item_label: "Customer ID"
  }

  dimension: default_address__default {
    type: yesno
    sql: ${TABLE}.default_address.`default` ;;
    group_label: "Default Address"
    group_item_label: "Default"
  }

  dimension: default_address__first_name {
    type: string
    sql: ${TABLE}.default_address.first_name ;;
    group_label: "Default Address"
    group_item_label: "First Name"
  }

  dimension: default_address__id {
    type: number
    sql: ${TABLE}.default_address.id ;;
    group_label: "Default Address"
    group_item_label: "ID"
  }

  dimension: default_address__last_name {
    type: string
    sql: ${TABLE}.default_address.last_name ;;
    group_label: "Default Address"
    group_item_label: "Last Name"
  }

  dimension: default_address__latitude {
    type: number
    sql: ${TABLE}.default_address.latitude ;;
    group_label: "Default Address"
    group_item_label: "Latitude"
  }

  dimension: default_address__longitude {
    type: number
    sql: ${TABLE}.default_address.longitude ;;
    group_label: "Default Address"
    group_item_label: "Longitude"
  }

  dimension: default_address__name {
    type: string
    sql: ${TABLE}.default_address.name ;;
    group_label: "Default Address"
    group_item_label: "Name"
  }

  dimension: default_address__phone {
    type: string
    sql: ${TABLE}.default_address.phone ;;
    group_label: "Default Address"
    group_item_label: "Phone"
  }

  dimension: default_address__province {
    type: string
    sql: ${TABLE}.default_address.province ;;
    group_label: "Default Address"
    group_item_label: "Province"
  }

  dimension: default_address__province_code {
    type: string
    sql: ${TABLE}.default_address.province_code ;;
    group_label: "Default Address"
    group_item_label: "Province Code"
  }

  dimension: default_address__zip {
    type: string
    sql: ${TABLE}.default_address.zip ;;
    group_label: "Default Address"
    group_item_label: "Zip"
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: email_marketing_consent__consent_collected_from {
    type: string
    sql: ${TABLE}.email_marketing_consent.consent_collected_from ;;
    group_label: "Email Marketing Consent"
    group_item_label: "Consent Collected From"
  }

  dimension_group: email_marketing_consent__consent_updated {
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
    sql: ${TABLE}.email_marketing_consent.consent_updated_at ;;
  }

  dimension: email_marketing_consent__opt_in_level {
    type: string
    sql: ${TABLE}.email_marketing_consent.opt_in_level ;;
    group_label: "Email Marketing Consent"
    group_item_label: "Opt In Level"
  }

  dimension: email_marketing_consent__state {
    type: string
    sql: ${TABLE}.email_marketing_consent.state ;;
    group_label: "Email Marketing Consent"
    group_item_label: "State"
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: last_order_id {
    type: number
    sql: ${TABLE}.last_order_id ;;
  }

  dimension: last_order_name {
    type: string
    sql: ${TABLE}.last_order_name ;;
  }

  dimension: marketing_opt_in_level {
    type: string
    sql: ${TABLE}.marketing_opt_in_level ;;
  }

  dimension: metafield__key {
    type: string
    sql: ${TABLE}.metafield.key ;;
    group_label: "Metafield"
    group_item_label: "Key"
  }

  dimension: metafield__namespace {
    type: string
    sql: ${TABLE}.metafield.namespace ;;
    group_label: "Metafield"
    group_item_label: "Namespace"
  }

  dimension: metafield__value {
    type: string
    sql: ${TABLE}.metafield.value ;;
    group_label: "Metafield"
    group_item_label: "Value"
  }

  dimension: metafield__value_type {
    type: string
    sql: ${TABLE}.metafield.value_type ;;
    group_label: "Metafield"
    group_item_label: "Value Type"
  }

  dimension: multipass_identifier {
    type: string
    sql: ${TABLE}.multipass_identifier ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}.orders_count ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: password_confirmation {
    type: string
    sql: ${TABLE}.password_confirmation ;;
  }

  dimension: phone {
    type: number
    sql: ${TABLE}.phone ;;
  }

  dimension: sms_marketing_consent__consent_collected_from {
    type: string
    sql: ${TABLE}.sms_marketing_consent.consent_collected_from ;;
    group_label: "Sms Marketing Consent"
    group_item_label: "Consent Collected From"
  }

  dimension_group: sms_marketing_consent__consent_updated {
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
    sql: ${TABLE}.sms_marketing_consent.consent_updated_at ;;
  }

  dimension: sms_marketing_consent__opt_in_level {
    type: string
    sql: ${TABLE}.sms_marketing_consent.opt_in_level ;;
    group_label: "Sms Marketing Consent"
    group_item_label: "Opt In Level"
  }

  dimension: sms_marketing_consent__state {
    type: string
    sql: ${TABLE}.sms_marketing_consent.state ;;
    group_label: "Sms Marketing Consent"
    group_item_label: "State"
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: tax_exempt {
    type: yesno
    sql: ${TABLE}.tax_exempt ;;
  }

  dimension: tax_exemptions {
    hidden: yes
    sql: ${TABLE}.tax_exemptions ;;
  }

  dimension: total_spent {
    type: number
    sql: ${TABLE}.total_spent ;;
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

  dimension: verified_email {
    type: yesno
    sql: ${TABLE}.verified_email ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      last_order_name,
      first_name,
      last_name,
      default_address__name,
      default_address__last_name,
      default_address__first_name,
      default_address__country_name
    ]
  }
}

view: shopify_customers__addresses {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: id ;;
  }

  dimension: address1 {
    type: string
    sql: address1 ;;
  }

  dimension: address2 {
    type: string
    sql: address2 ;;
  }

  dimension: city {
    type: string
    sql: city ;;
  }

  dimension: company {
    type: string
    sql: company ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: country ;;
  }

  dimension: country_code {
    type: string
    sql: country_code ;;
  }

  dimension: country_name {
    type: string
    sql: country_name ;;
  }

  dimension: customer_id {
    type: number
    sql: customer_id ;;
  }

  dimension: default {
    type: yesno
    sql: `default`
      ;;
  }

  dimension: first_name {
    type: string
    sql: first_name ;;
  }

  dimension: last_name {
    type: string
    sql: last_name ;;
  }

  dimension: latitude {
    type: number
    sql: latitude ;;
  }

  dimension: longitude {
    type: number
    sql: longitude ;;
  }

  dimension: name {
    type: string
    sql: name ;;
  }

  dimension: phone {
    type: string
    sql: phone ;;
  }

  dimension: province {
    type: string
    sql: province ;;
  }

  dimension: province_code {
    type: string
    sql: province_code ;;
  }

  dimension: shopify_customers__addresses {
    type: string
    hidden: yes
    sql: shopify_customers__addresses ;;
  }

  dimension: zip {
    type: zipcode
    sql: zip ;;
  }
}

view: shopify_customers__tax_exemptions {
  dimension: shopify_customers__tax_exemptions {
    type: string
    sql: shopify_customers__tax_exemptions ;;
  }
}
