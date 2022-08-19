view: shopify_orders {
  sql_table_name: `user_david_t0jn.shopify_orders`
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

  dimension: app_id {
    type: number
    sql: ${TABLE}.app_id ;;
  }

  dimension: billing_address__address1 {
    type: string
    sql: ${TABLE}.billing_address.address1 ;;
    group_label: "Billing Address"
    group_item_label: "Address1"
  }

  dimension: billing_address__address2 {
    type: string
    sql: ${TABLE}.billing_address.address2 ;;
    group_label: "Billing Address"
    group_item_label: "Address2"
  }

  dimension: billing_address__city {
    type: string
    sql: ${TABLE}.billing_address.city ;;
    group_label: "Billing Address"
    group_item_label: "City"
  }

  dimension: billing_address__company {
    type: string
    sql: ${TABLE}.billing_address.company ;;
    group_label: "Billing Address"
    group_item_label: "Company"
  }

  dimension: billing_address__country {
    type: string
    sql: ${TABLE}.billing_address.country ;;
    group_label: "Billing Address"
    group_item_label: "Country"
  }

  dimension: billing_address__country_code {
    type: string
    sql: ${TABLE}.billing_address.country_code ;;
    group_label: "Billing Address"
    group_item_label: "Country Code"
  }

  dimension: billing_address__country_name {
    type: string
    sql: ${TABLE}.billing_address.country_name ;;
    group_label: "Billing Address"
    group_item_label: "Country Name"
  }

  dimension: billing_address__customer_id {
    type: number
    sql: ${TABLE}.billing_address.customer_id ;;
    group_label: "Billing Address"
    group_item_label: "Customer ID"
  }

  dimension: billing_address__default {
    type: yesno
    sql: ${TABLE}.billing_address.`default` ;;
    group_label: "Billing Address"
    group_item_label: "Default"
  }

  dimension: billing_address__first_name {
    type: string
    sql: ${TABLE}.billing_address.first_name ;;
    group_label: "Billing Address"
    group_item_label: "First Name"
  }

  dimension: billing_address__id {
    type: number
    sql: ${TABLE}.billing_address.id ;;
    group_label: "Billing Address"
    group_item_label: "ID"
  }

  dimension: billing_address__last_name {
    type: string
    sql: ${TABLE}.billing_address.last_name ;;
    group_label: "Billing Address"
    group_item_label: "Last Name"
  }

  dimension: billing_address__latitude {
    type: number
    sql: ${TABLE}.billing_address.latitude ;;
    group_label: "Billing Address"
    group_item_label: "Latitude"
  }

  dimension: billing_address__longitude {
    type: number
    sql: ${TABLE}.billing_address.longitude ;;
    group_label: "Billing Address"
    group_item_label: "Longitude"
  }

  dimension: billing_address__name {
    type: string
    sql: ${TABLE}.billing_address.name ;;
    group_label: "Billing Address"
    group_item_label: "Name"
  }

  dimension: billing_address__phone {
    type: string
    sql: ${TABLE}.billing_address.phone ;;
    group_label: "Billing Address"
    group_item_label: "Phone"
  }

  dimension: billing_address__province {
    type: string
    sql: ${TABLE}.billing_address.province ;;
    group_label: "Billing Address"
    group_item_label: "Province"
  }

  dimension: billing_address__province_code {
    type: string
    sql: ${TABLE}.billing_address.province_code ;;
    group_label: "Billing Address"
    group_item_label: "Province Code"
  }

  dimension: billing_address__zip {
    type: string
    sql: ${TABLE}.billing_address.zip ;;
    group_label: "Billing Address"
    group_item_label: "Zip"
  }

  dimension: browser_ip {
    type: string
    sql: ${TABLE}.browser_ip ;;
  }

  dimension: buyer_accepts_marketing {
    type: yesno
    sql: ${TABLE}.buyer_accepts_marketing ;;
  }

  dimension: cancel_reason {
    type: string
    sql: ${TABLE}.cancel_reason ;;
  }

  dimension: cancelled_at {
    type: string
    sql: ${TABLE}.cancelled_at ;;
  }

  dimension: cart_token {
    type: string
    sql: ${TABLE}.cart_token ;;
  }

  dimension: checkout_id {
    type: number
    sql: ${TABLE}.checkout_id ;;
  }

  dimension: checkout_token {
    type: string
    sql: ${TABLE}.checkout_token ;;
  }

  dimension: client_details__accept_language {
    type: string
    sql: ${TABLE}.client_details.accept_language ;;
    group_label: "Client Details"
    group_item_label: "Accept Language"
  }

  dimension: client_details__browser_height {
    type: number
    sql: ${TABLE}.client_details.browser_height ;;
    group_label: "Client Details"
    group_item_label: "Browser Height"
  }

  dimension: client_details__browser_ip {
    type: string
    sql: ${TABLE}.client_details.browser_ip ;;
    group_label: "Client Details"
    group_item_label: "Browser IP"
  }

  dimension: client_details__browser_width {
    type: number
    sql: ${TABLE}.client_details.browser_width ;;
    group_label: "Client Details"
    group_item_label: "Browser Width"
  }

  dimension: client_details__session_hash {
    type: string
    sql: ${TABLE}.client_details.session_hash ;;
    group_label: "Client Details"
    group_item_label: "Session Hash"
  }

  dimension: client_details__user_agent {
    type: string
    sql: ${TABLE}.client_details.user_agent ;;
    group_label: "Client Details"
    group_item_label: "User Agent"
  }

  dimension_group: closed {
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
    sql: ${TABLE}.closed_at ;;
  }

  dimension: confirmed {
    type: yesno
    sql: ${TABLE}.confirmed ;;
  }

  dimension: contact_email {
    type: string
    sql: ${TABLE}.contact_email ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: current_subtotal_price {
    type: number
    sql: ${TABLE}.current_subtotal_price ;;
  }

  dimension: current_subtotal_price_set__presentment_money__amount {
    type: number
    sql: ${TABLE}.current_subtotal_price_set.presentment_money.amount ;;
    group_label: "Current Subtotal Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: current_subtotal_price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.current_subtotal_price_set.presentment_money.currency_code ;;
    group_label: "Current Subtotal Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: current_subtotal_price_set__shop_money__amount {
    type: number
    sql: ${TABLE}.current_subtotal_price_set.shop_money.amount ;;
    group_label: "Current Subtotal Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: current_subtotal_price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.current_subtotal_price_set.shop_money.currency_code ;;
    group_label: "Current Subtotal Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: current_total_discounts {
    type: number
    sql: ${TABLE}.current_total_discounts ;;
  }

  dimension: current_total_discounts_set__presentment_money__amount {
    type: number
    sql: ${TABLE}.current_total_discounts_set.presentment_money.amount ;;
    group_label: "Current Total Discounts Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: current_total_discounts_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.current_total_discounts_set.presentment_money.currency_code ;;
    group_label: "Current Total Discounts Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: current_total_discounts_set__shop_money__amount {
    type: number
    sql: ${TABLE}.current_total_discounts_set.shop_money.amount ;;
    group_label: "Current Total Discounts Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: current_total_discounts_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.current_total_discounts_set.shop_money.currency_code ;;
    group_label: "Current Total Discounts Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: current_total_duties_set__presentment_money__amount {
    type: number
    sql: ${TABLE}.current_total_duties_set.presentment_money.amount ;;
    group_label: "Current Total Duties Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: current_total_duties_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.current_total_duties_set.presentment_money.currency_code ;;
    group_label: "Current Total Duties Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: current_total_duties_set__shop_money__amount {
    type: number
    sql: ${TABLE}.current_total_duties_set.shop_money.amount ;;
    group_label: "Current Total Duties Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: current_total_duties_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.current_total_duties_set.shop_money.currency_code ;;
    group_label: "Current Total Duties Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: current_total_price {
    type: number
    sql: ${TABLE}.current_total_price ;;
  }

  dimension: current_total_price_set__presentment_money__amount {
    type: number
    sql: ${TABLE}.current_total_price_set.presentment_money.amount ;;
    group_label: "Current Total Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: current_total_price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.current_total_price_set.presentment_money.currency_code ;;
    group_label: "Current Total Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: current_total_price_set__shop_money__amount {
    type: number
    sql: ${TABLE}.current_total_price_set.shop_money.amount ;;
    group_label: "Current Total Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: current_total_price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.current_total_price_set.shop_money.currency_code ;;
    group_label: "Current Total Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: current_total_tax {
    type: number
    sql: ${TABLE}.current_total_tax ;;
  }

  dimension: current_total_tax_set__presentment_money__amount {
    type: number
    sql: ${TABLE}.current_total_tax_set.presentment_money.amount ;;
    group_label: "Current Total Tax Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: current_total_tax_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.current_total_tax_set.presentment_money.currency_code ;;
    group_label: "Current Total Tax Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: current_total_tax_set__shop_money__amount {
    type: number
    sql: ${TABLE}.current_total_tax_set.shop_money.amount ;;
    group_label: "Current Total Tax Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: current_total_tax_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.current_total_tax_set.shop_money.currency_code ;;
    group_label: "Current Total Tax Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: customer__accepts_marketing {
    type: yesno
    sql: ${TABLE}.customer.accepts_marketing ;;
    group_label: "Customer"
    group_item_label: "Accepts Marketing"
  }

  dimension_group: customer__accepts_marketing_updated {
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
    sql: ${TABLE}.customer.accepts_marketing_updated_at ;;
  }

  dimension: customer__addresses {
    hidden: yes
    sql: ${TABLE}.customer.addresses ;;
    group_label: "Customer"
    group_item_label: "Addresses"
  }

  dimension: customer__admin_graphql_api_id {
    type: string
    sql: ${TABLE}.customer.admin_graphql_api_id ;;
    group_label: "Customer"
    group_item_label: "Admin Graphql API ID"
  }

  dimension_group: customer__created {
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
    sql: ${TABLE}.customer.created_at ;;
  }

  dimension: customer__currency {
    type: string
    sql: ${TABLE}.customer.currency ;;
    group_label: "Customer"
    group_item_label: "Currency"
  }

  dimension: customer__default_address__address1 {
    type: string
    sql: ${TABLE}.customer.default_address.address1 ;;
    group_label: "Customer Default Address"
    group_item_label: "Address1"
  }

  dimension: customer__default_address__address2 {
    type: string
    sql: ${TABLE}.customer.default_address.address2 ;;
    group_label: "Customer Default Address"
    group_item_label: "Address2"
  }

  dimension: customer__default_address__city {
    type: string
    sql: ${TABLE}.customer.default_address.city ;;
    group_label: "Customer Default Address"
    group_item_label: "City"
  }

  dimension: customer__default_address__company {
    type: string
    sql: ${TABLE}.customer.default_address.company ;;
    group_label: "Customer Default Address"
    group_item_label: "Company"
  }

  dimension: customer__default_address__country {
    type: string
    sql: ${TABLE}.customer.default_address.country ;;
    group_label: "Customer Default Address"
    group_item_label: "Country"
  }

  dimension: customer__default_address__country_code {
    type: string
    sql: ${TABLE}.customer.default_address.country_code ;;
    group_label: "Customer Default Address"
    group_item_label: "Country Code"
  }

  dimension: customer__default_address__country_name {
    type: string
    sql: ${TABLE}.customer.default_address.country_name ;;
    group_label: "Customer Default Address"
    group_item_label: "Country Name"
  }

  dimension: customer__default_address__customer_id {
    type: number
    sql: ${TABLE}.customer.default_address.customer_id ;;
    group_label: "Customer Default Address"
    group_item_label: "Customer ID"
  }

  dimension: customer__default_address__default {
    type: yesno
    sql: ${TABLE}.customer.default_address.`default` ;;
    group_label: "Customer Default Address"
    group_item_label: "Default"
  }

  dimension: customer__default_address__first_name {
    type: string
    sql: ${TABLE}.customer.default_address.first_name ;;
    group_label: "Customer Default Address"
    group_item_label: "First Name"
  }

  dimension: customer__default_address__id {
    type: number
    sql: ${TABLE}.customer.default_address.id ;;
    group_label: "Customer Default Address"
    group_item_label: "ID"
  }

  dimension: customer__default_address__last_name {
    type: string
    sql: ${TABLE}.customer.default_address.last_name ;;
    group_label: "Customer Default Address"
    group_item_label: "Last Name"
  }

  dimension: customer__default_address__latitude {
    type: number
    sql: ${TABLE}.customer.default_address.latitude ;;
    group_label: "Customer Default Address"
    group_item_label: "Latitude"
  }

  dimension: customer__default_address__longitude {
    type: number
    sql: ${TABLE}.customer.default_address.longitude ;;
    group_label: "Customer Default Address"
    group_item_label: "Longitude"
  }

  dimension: customer__default_address__name {
    type: string
    sql: ${TABLE}.customer.default_address.name ;;
    group_label: "Customer Default Address"
    group_item_label: "Name"
  }

  dimension: customer__default_address__phone {
    type: string
    sql: ${TABLE}.customer.default_address.phone ;;
    group_label: "Customer Default Address"
    group_item_label: "Phone"
  }

  dimension: customer__default_address__province {
    type: string
    sql: ${TABLE}.customer.default_address.province ;;
    group_label: "Customer Default Address"
    group_item_label: "Province"
  }

  dimension: customer__default_address__province_code {
    type: string
    sql: ${TABLE}.customer.default_address.province_code ;;
    group_label: "Customer Default Address"
    group_item_label: "Province Code"
  }

  dimension: customer__default_address__zip {
    type: string
    sql: ${TABLE}.customer.default_address.zip ;;
    group_label: "Customer Default Address"
    group_item_label: "Zip"
  }

  dimension: customer__email {
    type: string
    sql: ${TABLE}.customer.email ;;
    group_label: "Customer"
    group_item_label: "Email"
  }

  dimension: customer__email_marketing_consent__consent_collected_from {
    type: string
    sql: ${TABLE}.customer.email_marketing_consent.consent_collected_from ;;
    group_label: "Customer Email Marketing Consent"
    group_item_label: "Consent Collected From"
  }

  dimension_group: customer__email_marketing_consent__consent_updated {
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
    sql: ${TABLE}.customer.email_marketing_consent.consent_updated_at ;;
  }

  dimension: customer__email_marketing_consent__opt_in_level {
    type: string
    sql: ${TABLE}.customer.email_marketing_consent.opt_in_level ;;
    group_label: "Customer Email Marketing Consent"
    group_item_label: "Opt In Level"
  }

  dimension: customer__email_marketing_consent__state {
    type: string
    sql: ${TABLE}.customer.email_marketing_consent.state ;;
    group_label: "Customer Email Marketing Consent"
    group_item_label: "State"
  }

  dimension: customer__first_name {
    type: string
    sql: ${TABLE}.customer.first_name ;;
    group_label: "Customer"
    group_item_label: "First Name"
  }

  dimension: customer__id {
    type: number
    sql: ${TABLE}.customer.id ;;
    group_label: "Customer"
    group_item_label: "ID"
  }

  dimension: customer__last_name {
    type: string
    sql: ${TABLE}.customer.last_name ;;
    group_label: "Customer"
    group_item_label: "Last Name"
  }

  dimension: customer__last_order_id {
    type: number
    sql: ${TABLE}.customer.last_order_id ;;
    group_label: "Customer"
    group_item_label: "Last Order ID"
  }

  dimension: customer__last_order_name {
    type: string
    sql: ${TABLE}.customer.last_order_name ;;
    group_label: "Customer"
    group_item_label: "Last Order Name"
  }

  dimension: customer__marketing_opt_in_level {
    type: string
    sql: ${TABLE}.customer.marketing_opt_in_level ;;
    group_label: "Customer"
    group_item_label: "Marketing Opt In Level"
  }

  dimension: customer__metafield__key {
    type: string
    sql: ${TABLE}.customer.metafield.key ;;
    group_label: "Customer Metafield"
    group_item_label: "Key"
  }

  dimension: customer__metafield__namespace {
    type: string
    sql: ${TABLE}.customer.metafield.namespace ;;
    group_label: "Customer Metafield"
    group_item_label: "Namespace"
  }

  dimension: customer__metafield__value {
    type: string
    sql: ${TABLE}.customer.metafield.value ;;
    group_label: "Customer Metafield"
    group_item_label: "Value"
  }

  dimension: customer__metafield__value_type {
    type: string
    sql: ${TABLE}.customer.metafield.value_type ;;
    group_label: "Customer Metafield"
    group_item_label: "Value Type"
  }

  dimension: customer__multipass_identifier {
    type: string
    sql: ${TABLE}.customer.multipass_identifier ;;
    group_label: "Customer"
    group_item_label: "Multipass Identifier"
  }

  dimension: customer__note {
    type: string
    sql: ${TABLE}.customer.note ;;
    group_label: "Customer"
    group_item_label: "Note"
  }

  dimension: customer__orders_count {
    type: number
    sql: ${TABLE}.customer.orders_count ;;
    group_label: "Customer"
    group_item_label: "Orders Count"
  }

  dimension: customer__password {
    type: string
    sql: ${TABLE}.customer.password ;;
    group_label: "Customer"
    group_item_label: "Password"
  }

  dimension: customer__password_confirmation {
    type: string
    sql: ${TABLE}.customer.password_confirmation ;;
    group_label: "Customer"
    group_item_label: "Password Confirmation"
  }

  dimension: customer__phone {
    type: number
    sql: ${TABLE}.customer.phone ;;
    group_label: "Customer"
    group_item_label: "Phone"
  }

  dimension: customer__sms_marketing_consent__consent_collected_from {
    type: string
    sql: ${TABLE}.customer.sms_marketing_consent.consent_collected_from ;;
    group_label: "Customer Sms Marketing Consent"
    group_item_label: "Consent Collected From"
  }

  dimension_group: customer__sms_marketing_consent__consent_updated {
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
    sql: ${TABLE}.customer.sms_marketing_consent.consent_updated_at ;;
  }

  dimension: customer__sms_marketing_consent__opt_in_level {
    type: string
    sql: ${TABLE}.customer.sms_marketing_consent.opt_in_level ;;
    group_label: "Customer Sms Marketing Consent"
    group_item_label: "Opt In Level"
  }

  dimension: customer__sms_marketing_consent__state {
    type: string
    sql: ${TABLE}.customer.sms_marketing_consent.state ;;
    group_label: "Customer Sms Marketing Consent"
    group_item_label: "State"
  }

  dimension: customer__state {
    type: string
    sql: ${TABLE}.customer.state ;;
    group_label: "Customer"
    group_item_label: "State"
  }

  dimension: customer__tags {
    type: string
    sql: ${TABLE}.customer.tags ;;
    group_label: "Customer"
    group_item_label: "Tags"
  }

  dimension: customer__tax_exempt {
    type: yesno
    sql: ${TABLE}.customer.tax_exempt ;;
    group_label: "Customer"
    group_item_label: "Tax Exempt"
  }

  dimension: customer__tax_exemptions {
    hidden: yes
    sql: ${TABLE}.customer.tax_exemptions ;;
    group_label: "Customer"
    group_item_label: "Tax Exemptions"
  }

  dimension: customer__total_spent {
    type: number
    sql: ${TABLE}.customer.total_spent ;;
    group_label: "Customer"
    group_item_label: "Total Spent"
  }

  dimension_group: customer__updated {
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
    sql: ${TABLE}.customer.updated_at ;;
  }

  dimension: customer__verified_email {
    type: yesno
    sql: ${TABLE}.customer.verified_email ;;
    group_label: "Customer"
    group_item_label: "Verified Email"
  }

  dimension: customer_locale {
    type: string
    sql: ${TABLE}.customer_locale ;;
  }

  dimension: device_id {
    type: string
    sql: ${TABLE}.device_id ;;
  }

  dimension: discount_applications {
    hidden: yes
    sql: ${TABLE}.discount_applications ;;
  }

  dimension: discount_codes {
    hidden: yes
    sql: ${TABLE}.discount_codes ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: estimated_taxes {
    type: yesno
    sql: ${TABLE}.estimated_taxes ;;
  }

  dimension: financial_status {
    type: string
    sql: ${TABLE}.financial_status ;;
  }

  dimension: fulfillment_status {
    type: string
    sql: ${TABLE}.fulfillment_status ;;
  }

  dimension: gateway {
    type: string
    sql: ${TABLE}.gateway ;;
  }

  dimension: landing_site {
    type: string
    sql: ${TABLE}.landing_site ;;
  }

  dimension: landing_site_ref {
    type: string
    sql: ${TABLE}.landing_site_ref ;;
  }

  dimension: line_items {
    hidden: yes
    sql: ${TABLE}.line_items ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.location_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }

  dimension: note_attributes {
    hidden: yes
    sql: ${TABLE}.note_attributes ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }

  dimension: order_number {
    type: number
    sql: ${TABLE}.order_number ;;
  }

  dimension: order_status_url {
    type: string
    sql: ${TABLE}.order_status_url ;;
  }

  dimension: original_total_duties_set__presentment_money__amount {
    type: number
    sql: ${TABLE}.original_total_duties_set.presentment_money.amount ;;
    group_label: "Original Total Duties Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: original_total_duties_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.original_total_duties_set.presentment_money.currency_code ;;
    group_label: "Original Total Duties Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: original_total_duties_set__shop_money__amount {
    type: number
    sql: ${TABLE}.original_total_duties_set.shop_money.amount ;;
    group_label: "Original Total Duties Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: original_total_duties_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.original_total_duties_set.shop_money.currency_code ;;
    group_label: "Original Total Duties Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: payment_details__avs_result_code {
    type: string
    sql: ${TABLE}.payment_details.avs_result_code ;;
    group_label: "Payment Details"
    group_item_label: "Avs Result Code"
  }

  dimension: payment_details__credit_card_bin {
    type: number
    sql: ${TABLE}.payment_details.credit_card_bin ;;
    group_label: "Payment Details"
    group_item_label: "Credit Card Bin"
  }

  dimension: payment_details__credit_card_company {
    type: string
    sql: ${TABLE}.payment_details.credit_card_company ;;
    group_label: "Payment Details"
    group_item_label: "Credit Card Company"
  }

  dimension_group: payment_details__credit_card_number {
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
    sql: ${TABLE}.payment_details.credit_card_number ;;
  }

  dimension: payment_details__cvv_result_code {
    type: string
    sql: ${TABLE}.payment_details.cvv_result_code ;;
    group_label: "Payment Details"
    group_item_label: "Cvv Result Code"
  }

  dimension: payment_gateway_names {
    hidden: yes
    sql: ${TABLE}.payment_gateway_names ;;
  }

  dimension: payment_terms__amount {
    type: number
    sql: ${TABLE}.payment_terms.amount ;;
    group_label: "Payment Terms"
    group_item_label: "Amount"
  }

  dimension: payment_terms__currency {
    type: string
    sql: ${TABLE}.payment_terms.currency ;;
    group_label: "Payment Terms"
    group_item_label: "Currency"
  }

  dimension: payment_terms__due_in_days {
    type: number
    sql: ${TABLE}.payment_terms.due_in_days ;;
    group_label: "Payment Terms"
    group_item_label: "Due In Days"
  }

  dimension: payment_terms__payment_schedules {
    hidden: yes
    sql: ${TABLE}.payment_terms.payment_schedules ;;
    group_label: "Payment Terms"
    group_item_label: "Payment Schedules"
  }

  dimension: payment_terms__payment_terms_name {
    type: string
    sql: ${TABLE}.payment_terms.payment_terms_name ;;
    group_label: "Payment Terms"
    group_item_label: "Payment Terms Name"
  }

  dimension: payment_terms__payment_terms_type {
    type: string
    sql: ${TABLE}.payment_terms.payment_terms_type ;;
    group_label: "Payment Terms"
    group_item_label: "Payment Terms Type"
  }

  dimension: phone {
    type: number
    sql: ${TABLE}.phone ;;
  }

  dimension: presentment_currency {
    type: string
    sql: ${TABLE}.presentment_currency ;;
  }

  dimension_group: processed {
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
    sql: ${TABLE}.processed_at ;;
  }

  dimension: processing_method {
    type: string
    sql: ${TABLE}.processing_method ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }

  dimension: referring_site {
    type: string
    sql: ${TABLE}.referring_site ;;
  }

  dimension: refunds {
    hidden: yes
    sql: ${TABLE}.refunds ;;
  }

  dimension: shipping_address__address1 {
    type: string
    sql: ${TABLE}.shipping_address.address1 ;;
    group_label: "Shipping Address"
    group_item_label: "Address1"
  }

  dimension: shipping_address__address2 {
    type: string
    sql: ${TABLE}.shipping_address.address2 ;;
    group_label: "Shipping Address"
    group_item_label: "Address2"
  }

  dimension: shipping_address__city {
    type: string
    sql: ${TABLE}.shipping_address.city ;;
    group_label: "Shipping Address"
    group_item_label: "City"
  }

  dimension: shipping_address__company {
    type: string
    sql: ${TABLE}.shipping_address.company ;;
    group_label: "Shipping Address"
    group_item_label: "Company"
  }

  dimension: shipping_address__country {
    type: string
    sql: ${TABLE}.shipping_address.country ;;
    group_label: "Shipping Address"
    group_item_label: "Country"
  }

  dimension: shipping_address__country_code {
    type: string
    sql: ${TABLE}.shipping_address.country_code ;;
    group_label: "Shipping Address"
    group_item_label: "Country Code"
  }

  dimension: shipping_address__country_name {
    type: string
    sql: ${TABLE}.shipping_address.country_name ;;
    group_label: "Shipping Address"
    group_item_label: "Country Name"
  }

  dimension: shipping_address__customer_id {
    type: number
    sql: ${TABLE}.shipping_address.customer_id ;;
    group_label: "Shipping Address"
    group_item_label: "Customer ID"
  }

  dimension: shipping_address__default {
    type: yesno
    sql: ${TABLE}.shipping_address.`default` ;;
    group_label: "Shipping Address"
    group_item_label: "Default"
  }

  dimension: shipping_address__first_name {
    type: string
    sql: ${TABLE}.shipping_address.first_name ;;
    group_label: "Shipping Address"
    group_item_label: "First Name"
  }

  dimension: shipping_address__id {
    type: number
    sql: ${TABLE}.shipping_address.id ;;
    group_label: "Shipping Address"
    group_item_label: "ID"
  }

  dimension: shipping_address__last_name {
    type: string
    sql: ${TABLE}.shipping_address.last_name ;;
    group_label: "Shipping Address"
    group_item_label: "Last Name"
  }

  dimension: shipping_address__latitude {
    type: number
    sql: ${TABLE}.shipping_address.latitude ;;
    group_label: "Shipping Address"
    group_item_label: "Latitude"
  }

  dimension: shipping_address__longitude {
    type: number
    sql: ${TABLE}.shipping_address.longitude ;;
    group_label: "Shipping Address"
    group_item_label: "Longitude"
  }

  dimension: shipping_address__name {
    type: string
    sql: ${TABLE}.shipping_address.name ;;
    group_label: "Shipping Address"
    group_item_label: "Name"
  }

  dimension: shipping_address__phone {
    type: string
    sql: ${TABLE}.shipping_address.phone ;;
    group_label: "Shipping Address"
    group_item_label: "Phone"
  }

  dimension: shipping_address__province {
    type: string
    sql: ${TABLE}.shipping_address.province ;;
    group_label: "Shipping Address"
    group_item_label: "Province"
  }

  dimension: shipping_address__province_code {
    type: string
    sql: ${TABLE}.shipping_address.province_code ;;
    group_label: "Shipping Address"
    group_item_label: "Province Code"
  }

  dimension: shipping_address__zip {
    type: string
    sql: ${TABLE}.shipping_address.zip ;;
    group_label: "Shipping Address"
    group_item_label: "Zip"
  }

  dimension: shipping_lines {
    hidden: yes
    sql: ${TABLE}.shipping_lines ;;
  }

  dimension: source_identifier {
    type: string
    sql: ${TABLE}.source_identifier ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.source_name ;;
  }

  dimension: source_url {
    type: string
    sql: ${TABLE}.source_url ;;
  }

  dimension: subtotal_price {
    type: number
    sql: ${TABLE}.subtotal_price ;;
  }

  dimension: subtotal_price_set__presentment_money__amount {
    type: number
    sql: ${TABLE}.subtotal_price_set.presentment_money.amount ;;
    group_label: "Subtotal Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: subtotal_price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.subtotal_price_set.presentment_money.currency_code ;;
    group_label: "Subtotal Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: subtotal_price_set__shop_money__amount {
    type: number
    sql: ${TABLE}.subtotal_price_set.shop_money.amount ;;
    group_label: "Subtotal Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: subtotal_price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.subtotal_price_set.shop_money.currency_code ;;
    group_label: "Subtotal Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: tax_lines {
    hidden: yes
    sql: ${TABLE}.tax_lines ;;
  }

  dimension: taxes_included {
    type: yesno
    sql: ${TABLE}.taxes_included ;;
  }

  dimension: test {
    type: yesno
    sql: ${TABLE}.test ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  dimension: total_discounts {
    type: number
    sql: ${TABLE}.total_discounts ;;
  }

  dimension: total_discounts_set__presentment_money__amount {
    type: number
    sql: ${TABLE}.total_discounts_set.presentment_money.amount ;;
    group_label: "Total Discounts Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: total_discounts_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.total_discounts_set.presentment_money.currency_code ;;
    group_label: "Total Discounts Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: total_discounts_set__shop_money__amount {
    type: number
    sql: ${TABLE}.total_discounts_set.shop_money.amount ;;
    group_label: "Total Discounts Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: total_discounts_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.total_discounts_set.shop_money.currency_code ;;
    group_label: "Total Discounts Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: total_line_items_price {
    type: number
    sql: ${TABLE}.total_line_items_price ;;
  }

  dimension: total_line_items_price_set__presentment_money__amount {
    type: number
    sql: ${TABLE}.total_line_items_price_set.presentment_money.amount ;;
    group_label: "Total Line Items Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: total_line_items_price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.total_line_items_price_set.presentment_money.currency_code ;;
    group_label: "Total Line Items Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: total_line_items_price_set__shop_money__amount {
    type: number
    sql: ${TABLE}.total_line_items_price_set.shop_money.amount ;;
    group_label: "Total Line Items Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: total_line_items_price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.total_line_items_price_set.shop_money.currency_code ;;
    group_label: "Total Line Items Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: total_outstanding {
    type: number
    sql: ${TABLE}.total_outstanding ;;
  }

  dimension: total_price {
    type: number
    sql: ${TABLE}.total_price ;;
  }

  dimension: total_price_set__presentment_money__amount {
    type: number
    sql: ${TABLE}.total_price_set.presentment_money.amount ;;
    group_label: "Total Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: total_price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.total_price_set.presentment_money.currency_code ;;
    group_label: "Total Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: total_price_set__shop_money__amount {
    type: number
    sql: ${TABLE}.total_price_set.shop_money.amount ;;
    group_label: "Total Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: total_price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.total_price_set.shop_money.currency_code ;;
    group_label: "Total Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: total_price_usd {
    type: number
    sql: ${TABLE}.total_price_usd ;;
  }

  dimension: total_shipping_price_set__presentment_money__amount {
    type: number
    sql: ${TABLE}.total_shipping_price_set.presentment_money.amount ;;
    group_label: "Total Shipping Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: total_shipping_price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.total_shipping_price_set.presentment_money.currency_code ;;
    group_label: "Total Shipping Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: total_shipping_price_set__shop_money__amount {
    type: number
    sql: ${TABLE}.total_shipping_price_set.shop_money.amount ;;
    group_label: "Total Shipping Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: total_shipping_price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.total_shipping_price_set.shop_money.currency_code ;;
    group_label: "Total Shipping Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: total_tax {
    type: number
    sql: ${TABLE}.total_tax ;;
  }

  dimension: total_tax_set__presentment_money__amount {
    type: number
    sql: ${TABLE}.total_tax_set.presentment_money.amount ;;
    group_label: "Total Tax Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: total_tax_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.total_tax_set.presentment_money.currency_code ;;
    group_label: "Total Tax Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: total_tax_set__shop_money__amount {
    type: number
    sql: ${TABLE}.total_tax_set.shop_money.amount ;;
    group_label: "Total Tax Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: total_tax_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.total_tax_set.shop_money.currency_code ;;
    group_label: "Total Tax Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: total_tip_received {
    type: number
    sql: ${TABLE}.total_tip_received ;;
  }

  dimension: total_weight {
    type: number
    sql: ${TABLE}.total_weight ;;
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

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      source_name,
      customer__last_name,
      customer__first_name,
      billing_address__name,
      shipping_address__name,
      customer__last_order_name,
      billing_address__last_name,
      billing_address__first_name,
      shipping_address__last_name,
      shipping_address__first_name,
      billing_address__country_name,
      shipping_address__country_name,
      customer__default_address__name,
      payment_terms__payment_terms_name,
      customer__default_address__last_name,
      customer__default_address__first_name,
      customer__default_address__country_name
    ]
  }
}

view: shopify_orders__refunds {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: id ;;
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

  dimension: note {
    type: string
    sql: note ;;
  }

  dimension: order_adjustments {
    hidden: yes
    sql: order_adjustments ;;
  }

  dimension: order_id {
    type: number
    sql: order_id ;;
  }

  dimension_group: processed {
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
    sql: processed_at ;;
  }

  dimension: refund_line_items {
    hidden: yes
    sql: refund_line_items ;;
  }

  dimension: shopify_orders__refunds {
    type: string
    hidden: yes
    sql: shopify_orders__refunds ;;
  }

  dimension: transactions {
    hidden: yes
    sql: transactions ;;
  }

  dimension: user_id {
    type: string
    sql: user_id ;;
  }
}

view: shopify_orders__tax_lines {
  dimension: channel_liable {
    type: yesno
    sql: channel_liable ;;
  }

  dimension: price {
    type: number
    sql: price ;;
  }

  dimension: price_set__presentment_money__amount {
    type: number
    sql: ${TABLE}.price_set.presentment_money.amount ;;
    group_label: "Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.price_set.presentment_money.currency_code ;;
    group_label: "Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: price_set__shop_money__amount {
    type: number
    sql: ${TABLE}.price_set.shop_money.amount ;;
    group_label: "Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.price_set.shop_money.currency_code ;;
    group_label: "Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: rate {
    type: number
    sql: rate ;;
  }

  dimension: shopify_orders__tax_lines {
    type: string
    hidden: yes
    sql: shopify_orders__tax_lines ;;
  }

  dimension: title {
    type: string
    sql: title ;;
  }
}

view: shopify_orders__line_items {
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

  dimension: applied_discounts {
    hidden: yes
    sql: applied_discounts ;;
  }

  dimension: destination_location__address1 {
    type: string
    sql: ${TABLE}.destination_location.address1 ;;
    group_label: "Destination Location"
    group_item_label: "Address1"
  }

  dimension: destination_location__address2 {
    type: string
    sql: ${TABLE}.destination_location.address2 ;;
    group_label: "Destination Location"
    group_item_label: "Address2"
  }

  dimension: destination_location__city {
    type: string
    sql: ${TABLE}.destination_location.city ;;
    group_label: "Destination Location"
    group_item_label: "City"
  }

  dimension: destination_location__country_code {
    type: string
    sql: ${TABLE}.destination_location.country_code ;;
    group_label: "Destination Location"
    group_item_label: "Country Code"
  }

  dimension: destination_location__id {
    type: number
    sql: ${TABLE}.destination_location.id ;;
    group_label: "Destination Location"
    group_item_label: "ID"
  }

  dimension: destination_location__name {
    type: string
    sql: ${TABLE}.destination_location.name ;;
    group_label: "Destination Location"
    group_item_label: "Name"
  }

  dimension: destination_location__province_code {
    type: string
    sql: ${TABLE}.destination_location.province_code ;;
    group_label: "Destination Location"
    group_item_label: "Province Code"
  }

  dimension: destination_location__zip {
    type: string
    sql: ${TABLE}.destination_location.zip ;;
    group_label: "Destination Location"
    group_item_label: "Zip"
  }

  dimension: destination_location_id {
    type: string
    sql: destination_location_id ;;
  }

  dimension: discount_allocations {
    hidden: yes
    sql: discount_allocations ;;
  }

  dimension: duties {
    hidden: yes
    sql: duties ;;
  }

  dimension: fulfillable_quantity {
    type: number
    sql: fulfillable_quantity ;;
  }

  dimension: fulfillment_service {
    type: string
    sql: fulfillment_service ;;
  }

  dimension: fulfillment_status {
    type: string
    sql: fulfillment_status ;;
  }

  dimension: gift_card {
    type: yesno
    sql: gift_card ;;
  }

  dimension: grams {
    type: number
    sql: grams ;;
  }

  dimension: key {
    type: string
    sql: key ;;
  }

  dimension: name {
    type: string
    sql: name ;;
  }

  dimension: origin_location__address1 {
    type: string
    sql: ${TABLE}.origin_location.address1 ;;
    group_label: "Origin Location"
    group_item_label: "Address1"
  }

  dimension: origin_location__address2 {
    type: string
    sql: ${TABLE}.origin_location.address2 ;;
    group_label: "Origin Location"
    group_item_label: "Address2"
  }

  dimension: origin_location__city {
    type: string
    sql: ${TABLE}.origin_location.city ;;
    group_label: "Origin Location"
    group_item_label: "City"
  }

  dimension: origin_location__country_code {
    type: string
    sql: ${TABLE}.origin_location.country_code ;;
    group_label: "Origin Location"
    group_item_label: "Country Code"
  }

  dimension: origin_location__id {
    type: number
    sql: ${TABLE}.origin_location.id ;;
    group_label: "Origin Location"
    group_item_label: "ID"
  }

  dimension: origin_location__name {
    type: string
    sql: ${TABLE}.origin_location.name ;;
    group_label: "Origin Location"
    group_item_label: "Name"
  }

  dimension: origin_location__province_code {
    type: string
    sql: ${TABLE}.origin_location.province_code ;;
    group_label: "Origin Location"
    group_item_label: "Province Code"
  }

  dimension: origin_location__zip {
    type: string
    sql: ${TABLE}.origin_location.zip ;;
    group_label: "Origin Location"
    group_item_label: "Zip"
  }

  dimension: origin_location_id {
    type: string
    sql: origin_location_id ;;
  }

  dimension: presentment_title {
    type: string
    sql: presentment_title ;;
  }

  dimension: presentment_variant_title {
    type: string
    sql: presentment_variant_title ;;
  }

  dimension: price {
    type: number
    sql: price ;;
  }

  dimension: price_set__presentment_money__amount {
    type: number
    sql: ${TABLE}.price_set.presentment_money.amount ;;
    group_label: "Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.price_set.presentment_money.currency_code ;;
    group_label: "Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: price_set__shop_money__amount {
    type: number
    sql: ${TABLE}.price_set.shop_money.amount ;;
    group_label: "Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.price_set.shop_money.currency_code ;;
    group_label: "Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: product_exists {
    type: yesno
    sql: product_exists ;;
  }

  dimension: product_id {
    type: number
    sql: product_id ;;
  }

  dimension: properties {
    hidden: yes
    sql: properties ;;
  }

  dimension: quantity {
    type: number
    sql: quantity ;;
  }

  dimension: requires_shipping {
    type: yesno
    sql: requires_shipping ;;
  }

  dimension: shopify_orders__line_items {
    type: string
    hidden: yes
    sql: shopify_orders__line_items ;;
  }

  dimension: sku {
    type: string
    sql: sku ;;
  }

  dimension: tax_lines {
    hidden: yes
    sql: tax_lines ;;
  }

  dimension: taxable {
    type: yesno
    sql: taxable ;;
  }

  dimension: title {
    type: string
    sql: title ;;
  }

  dimension: total_discount {
    type: number
    sql: total_discount ;;
  }

  dimension: total_discount_set__presentment_money__amount {
    type: number
    sql: ${TABLE}.total_discount_set.presentment_money.amount ;;
    group_label: "Total Discount Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: total_discount_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.total_discount_set.presentment_money.currency_code ;;
    group_label: "Total Discount Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: total_discount_set__shop_money__amount {
    type: number
    sql: ${TABLE}.total_discount_set.shop_money.amount ;;
    group_label: "Total Discount Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: total_discount_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.total_discount_set.shop_money.currency_code ;;
    group_label: "Total Discount Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: user_id {
    type: number
    sql: user_id ;;
  }

  dimension: variant_id {
    type: number
    sql: variant_id ;;
  }

  dimension: variant_inventory_management {
    type: string
    sql: variant_inventory_management ;;
  }

  dimension: variant_price {
    type: number
    sql: variant_price ;;
  }

  dimension: variant_title {
    type: string
    sql: variant_title ;;
  }

  dimension: vendor {
    type: string
    sql: vendor ;;
  }
}

view: shopify_orders__shipping_lines {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: id ;;
  }

  dimension: carrier_identifier {
    type: string
    sql: carrier_identifier ;;
  }

  dimension: code {
    type: string
    sql: code ;;
  }

  dimension: discounted_price {
    type: number
    sql: discounted_price ;;
  }

  dimension: discounted_price_set__presentment_money__amount {
    type: number
    sql: ${TABLE}.discounted_price_set.presentment_money.amount ;;
    group_label: "Discounted Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: discounted_price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.discounted_price_set.presentment_money.currency_code ;;
    group_label: "Discounted Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: discounted_price_set__shop_money__amount {
    type: number
    sql: ${TABLE}.discounted_price_set.shop_money.amount ;;
    group_label: "Discounted Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: discounted_price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.discounted_price_set.shop_money.currency_code ;;
    group_label: "Discounted Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: price {
    type: number
    sql: price ;;
  }

  dimension: price_set__presentment_money__amount {
    type: number
    sql: ${TABLE}.price_set.presentment_money.amount ;;
    group_label: "Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.price_set.presentment_money.currency_code ;;
    group_label: "Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: price_set__shop_money__amount {
    type: number
    sql: ${TABLE}.price_set.shop_money.amount ;;
    group_label: "Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.price_set.shop_money.currency_code ;;
    group_label: "Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: requested_fulfillment_service_id {
    type: string
    sql: requested_fulfillment_service_id ;;
  }

  dimension: shopify_orders__shipping_lines {
    type: string
    hidden: yes
    sql: shopify_orders__shipping_lines ;;
  }

  dimension: source {
    type: string
    sql: source ;;
  }

  dimension: tax_lines {
    hidden: yes
    sql: tax_lines ;;
  }

  dimension: title {
    type: string
    sql: title ;;
  }
}

view: shopify_orders__discount_codes {
  dimension: amount {
    type: number
    sql: amount ;;
  }

  dimension: code {
    type: string
    sql: code ;;
  }

  dimension: shopify_orders__discount_codes {
    type: string
    hidden: yes
    sql: shopify_orders__discount_codes ;;
  }

  dimension: type {
    type: string
    sql: type ;;
  }
}

view: shopify_orders__note_attributes {
  dimension: name {
    type: string
    sql: name ;;
  }

  dimension: shopify_orders__note_attributes {
    type: string
    hidden: yes
    sql: shopify_orders__note_attributes ;;
  }

  dimension: value {
    type: string
    sql: value ;;
  }
}

view: shopify_orders__line_items__duties {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: admin_graphql_api_id {
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
    sql: ${TABLE}.admin_graphql_api_id ;;
  }

  dimension: country_code_of_origin {
    type: string
    sql: ${TABLE}.country_code_of_origin ;;
  }

  dimension: harmonized_system_code {
    type: number
    sql: ${TABLE}.harmonized_system_code ;;
  }

  dimension: presentment_money__amount {
    type: number
    sql: ${TABLE}.presentment_money.amount ;;
    group_label: "Presentment Money"
    group_item_label: "Amount"
  }

  dimension: presentment_money__currency_code {
    type: string
    sql: ${TABLE}.presentment_money.currency_code ;;
    group_label: "Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: shop_money__amount {
    type: number
    sql: ${TABLE}.shop_money.amount ;;
    group_label: "Shop Money"
    group_item_label: "Amount"
  }

  dimension: shop_money__currency_code {
    type: string
    sql: ${TABLE}.shop_money.currency_code ;;
    group_label: "Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: tax_lines {
    hidden: yes
    sql: ${TABLE}.tax_lines ;;
  }
}

view: shopify_orders__refunds__transactions {
  dimension: shopify_orders__refunds__transactions {
    type: string
    sql: shopify_orders__refunds__transactions ;;
  }
}

view: shopify_orders__payment_gateway_names {
  dimension: shopify_orders__payment_gateway_names {
    type: string
    sql: shopify_orders__payment_gateway_names ;;
  }
}

view: shopify_orders__discount_applications {
  dimension: allocation_method {
    type: string
    sql: allocation_method ;;
  }

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: shopify_orders__discount_applications {
    type: string
    hidden: yes
    sql: shopify_orders__discount_applications ;;
  }

  dimension: target_selection {
    type: string
    sql: target_selection ;;
  }

  dimension: target_type {
    type: string
    sql: target_type ;;
  }

  dimension: title {
    type: string
    sql: title ;;
  }

  dimension: type {
    type: string
    sql: type ;;
  }

  dimension: value {
    type: number
    sql: value ;;
  }

  dimension: value_type {
    type: string
    sql: value_type ;;
  }
}

view: shopify_orders__customer__addresses {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: address1 {
    type: string
    sql: ${TABLE}.address1 ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.address2 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: default {
    type: yesno
    sql: ${TABLE}.`default` ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: province {
    type: string
    sql: ${TABLE}.province ;;
  }

  dimension: province_code {
    type: string
    sql: ${TABLE}.province_code ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }
}

view: shopify_orders__customer__tax_exemptions {
  dimension: shopify_orders__customer__tax_exemptions {
    type: string
    sql: shopify_orders__customer__tax_exemptions ;;
  }
}

view: shopify_orders__shipping_lines__tax_lines {
  dimension: shopify_orders__shipping_lines__tax_lines {
    type: string
    sql: shopify_orders__shipping_lines__tax_lines ;;
  }
}

view: shopify_orders__line_items__tax_lines {
  dimension: channel_liable {
    type: yesno
    sql: ${TABLE}.channel_liable ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: price_set__presentment_money__amount {
    type: number
    sql: ${TABLE}.price_set.presentment_money.amount ;;
    group_label: "Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.price_set.presentment_money.currency_code ;;
    group_label: "Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: price_set__shop_money__amount {
    type: number
    sql: ${TABLE}.price_set.shop_money.amount ;;
    group_label: "Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.price_set.shop_money.currency_code ;;
    group_label: "Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.rate ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
}

view: shopify_orders__refunds__refund_line_items {
  dimension: shopify_orders__refunds__refund_line_items {
    type: string
    sql: shopify_orders__refunds__refund_line_items ;;
  }
}

view: shopify_orders__refunds__order_adjustments {
  dimension: shopify_orders__refunds__order_adjustments {
    type: string
    sql: shopify_orders__refunds__order_adjustments ;;
  }
}

view: shopify_orders__line_items__properties {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: shopify_orders__line_items__applied_discounts {
  dimension: shopify_orders__line_items__applied_discounts {
    type: number
    sql: shopify_orders__line_items__applied_discounts ;;
  }
}

view: shopify_orders__line_items__duties__tax_lines {
  dimension: channel_liable {
    type: yesno
    sql: ${TABLE}.channel_liable ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: price_set__presentment_money__amount {
    type: number
    sql: ${TABLE}.price_set.presentment_money.amount ;;
    group_label: "Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.price_set.presentment_money.currency_code ;;
    group_label: "Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: price_set__shop_money__amount {
    type: number
    sql: ${TABLE}.price_set.shop_money.amount ;;
    group_label: "Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.price_set.shop_money.currency_code ;;
    group_label: "Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.rate ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
}

view: shopify_orders__line_items__discount_allocations {
  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: amount_set__presentment_money__amount {
    type: number
    sql: ${TABLE}.amount_set.presentment_money.amount ;;
    group_label: "Amount Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: amount_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.amount_set.presentment_money.currency_code ;;
    group_label: "Amount Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: amount_set__shop_money__amount {
    type: number
    sql: ${TABLE}.amount_set.shop_money.amount ;;
    group_label: "Amount Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: amount_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.amount_set.shop_money.currency_code ;;
    group_label: "Amount Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: discount_application_index {
    type: number
    sql: ${TABLE}.discount_application_index ;;
  }
}

view: shopify_orders__payment_terms__payment_schedules {
  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: completed_at {
    type: string
    sql: ${TABLE}.completed_at ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension_group: due {
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
    sql: ${TABLE}.due_at ;;
  }

  dimension: expected_payment_method {
    type: string
    sql: ${TABLE}.expected_payment_method ;;
  }

  dimension_group: issued {
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
    sql: ${TABLE}.issued_at ;;
  }
}
