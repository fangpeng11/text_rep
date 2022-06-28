CREATE OR REPLACE VIEW ldlads.vw_gtm_sales_order_item
  --       (
--        document_number COMMENT '单号',
--        sales_document_item COMMENT '品类编号',
--        document_date COMMENT '订单日期',
--        created_on_date_id COMMENT '订单创建日期',
--        sales_document_type_code COMMENT '订单类型',
--        item_status COMMENT '物料状态',
--        delivery_status COMMENT '库存状态',
--        purchase_oder_number COMMENT '库存编码',
--        customer_number COMMENT '经销商代码',
--        plant_code COMMENT '仓库代码',
--        shipto_party_code COMMENT '收货经销商代码',
--        material_number COMMENT '物料代码',
--        order_quantity_base_unit COMMENT '订单数量',
--        sales_unit_code COMMENT '销售物料代码',
--        netvalue_of_orderitem_indoc_currency COMMENT '订单金额',
--        is_deleted COMMENT '删除标记，1：删除，0：未删除',
--        rejection_reason_code COMMENT '拒收原因代码',
--        complex_flag_code COMMENT '套包类型',
--        over_all_status COMMENT '订单总体情况',
--        delivery_status_code COMMENT '库存状况'
--         )
AS
--  SELECT item.document_number                      AS document_number
--       , item.sales_document_item                  AS sales_document_item
--       , item.document_date                        AS document_date
--       , item.created_on_date_id                   AS created_on_date_id
--       , item.sales_document_type_code             AS sales_document_type_code
--       , item.item_status                          AS item_status
--       , item.delivery_status                      AS delivery_status
--       , item.purchase_oder_number                 AS purchase_oder_number
--       , item.customer_number                      AS customer_number
--       , item.plant_code                           AS plant_code
--       , item.shipto_party_code                    AS shipto_party_code
--       , item.material_number                      AS material_number
--       , item.order_quantity_base_unit             AS order_quantity_base_unit
--       , item.sales_unit_code                      AS sales_unit_code
--       , item.netvalue_of_orderitem_indoc_currency AS netvalue_of_orderitem_indoc_currency
--       , item.is_deleted                           AS is_deleted
--       , item.rejection_reason_code                AS rejection_reason_code
--       , item.complex_flag_code                    AS complex_flag_code
--       , item.over_all_status                      AS over_all_status
--       , item.delivery_status_code                 AS delivery_status_code
--       , header.schedule_line_delivery_date        AS schedule_line_delivery_date_header_level
--  FROM ldldws.fact_sales_order_item item
--       LEFT JOIN ldldws.fact_sales_order_header header
--       ON item.document_number = header.sales_document_number
--  WHERE item.pt_sellin_month >= DATE_FORMAT(ADD_MONTHS(DATE_SUB(CURRENT_TIMESTAMP, 1), -3), 'yyyy-MM')
--    AND item.document_date >= CONCAT(DATE_FORMAT(ADD_MONTHS(DATE_ADD(CURRENT_TIMESTAMP, -1), -2), 'yyyy-MM'), '-01')
--;
SELECT
   item.confirmed_code                                    AS confirmed_code
  ,item.sales_order_item                                  AS sales_order_item
  ,item.document_number                                   AS document_number
  ,item.sales_document_item                               AS sales_document_item
  ,item.delivery_status_code                              AS delivery_status_code
  ,item.order_related_billing_status_code                 AS order_related_billing_status_code
  ,item.rejection_status_code                             AS rejection_status_code
  ,item.billing_status_code                               AS billing_status_code
  ,item.goods_issue_date                                  AS goods_issue_date
  ,item.document_date                                     AS document_date
  ,item.conversion_date                                   AS conversion_date
  ,item.is_main_item_id                                   AS is_main_item_id
  ,item.purchase_oder_number                              AS purchase_oder_number
  ,item.division_code                                     AS division_code
  ,item.sales_organization_code                           AS sales_organization_code
  ,item.company_code                                      AS company_code
  ,item.customer_number                                   AS customer_number
  ,item.sales_employee_code                               AS sales_employee_code
  ,item.material_number                                   AS material_number
  ,item.sales_document_item_category_code                 AS sales_document_item_category_code
  ,item.sales_deal_code                                   AS sales_deal_code
  ,item.animation_code                                    AS animation_code
  ,item.promotion_active_code                             AS promotion_active_code
  ,item.customer_purchase_order_type_code                 AS customer_purchase_order_type_code
  ,item.base_unit_of_measure_code                         AS base_unit_of_measure_code
  ,item.currency_code                                     AS currency_code
  ,item.sales_document_type_code                          AS sales_document_type_code
  ,item.customer_hierarchy_level1_code                    AS customer_hierarchy_level1_code
  ,item.customer_hierarchy_level2_code                    AS customer_hierarchy_level2_code
  ,item.customer_hierarchy_level3_code                    AS customer_hierarchy_level3_code
  ,item.customer_hierarchy_level4_code                    AS customer_hierarchy_level4_code
  ,item.rejection_reason_code                             AS rejection_reason_code
  ,item.sales_unit_code                                   AS sales_unit_code
  ,item.document_currency_code                            AS document_currency_code
  ,item.sales_document_category_code                      AS sales_document_category_code
  ,item.higher_level_material_number                      AS higher_level_material_number
  ,item.document_date_id                                  AS document_date_id
  ,item.distribution_channel_code                         AS distribution_channel_code
  ,item.goods_issue_date_id                               AS goods_issue_date_id
  ,item.material_group1_code                              AS material_group1_code
  ,item.material_group_code                               AS material_group_code
  ,item.main_material_number                              AS main_material_number
  ,item.over_all_status                                   AS over_all_status
  ,item.over_all_delivery_status                          AS over_all_delivery_status
  ,item.bom1_number                                       AS bom1_number
  ,item.bom2_number                                       AS bom2_number
  ,item.minimum_delivery_quantity                         AS minimum_delivery_quantity
  ,item.rebate_value                                      AS rebate_value
  ,item.order_quantity_base_unit                          AS order_quantity_base_unit
  ,item.netvalue_of_orderitem_indoc_currency              AS netvalue_of_orderitem_indoc_currency
  ,item.accruals_order_value_for_cash_discount            AS accruals_order_value_for_cash_discount
  ,item.accruals_order_value_for_coupons                  AS accruals_order_value_for_coupons
  ,item.accruals_order_value_for_commercial_cooperation   AS accruals_order_value_for_commercial_cooperation
  ,item.accruals_ordervalue_sub_total2                    AS accruals_ordervalue_sub_total2
  ,item.accruals_ordervalue_sub_total3                    AS accruals_ordervalue_sub_total3
  ,item.accruals_ordervalue_sub_total6                    AS accruals_ordervalue_sub_total6
  ,item.accruals_ordervalue_sub_total7                    AS accruals_ordervalue_sub_total7
  ,item.accruals_ordervalue_sub_total8                    AS accruals_ordervalue_sub_total8
  ,item.accruals_ordervalue_sub_total9                    AS accruals_ordervalue_sub_total9
  ,item.accruals_ordervalue_sub_total10                   AS accruals_ordervalue_sub_total10
  ,item.accruals_ordervalue_sub_total11                   AS accruals_ordervalue_sub_total11
  ,item.accruals_ordervalue_sub_total15                   AS accruals_ordervalue_sub_total15
  ,item.accruals_ordervalue_sub_total16                   AS accruals_ordervalue_sub_total16
  ,item.accruals_ordervalue_sub_total17                   AS accruals_ordervalue_sub_total17
  ,item.accruals_ordervalue_sub_total18                   AS accruals_ordervalue_sub_total18
  ,item.accruals_ordervalue_sub_total19                   AS accruals_ordervalue_sub_total19
  ,item.accruals_ordervalue_sub_total20                   AS accruals_ordervalue_sub_total20
  ,item.accruals_ordervalue_sub_total21                   AS accruals_ordervalue_sub_total21
  ,item.accruals_ordervalue_sub_total22                   AS accruals_ordervalue_sub_total22
  ,item.accruals_ordervalue_sub_total23                   AS accruals_ordervalue_sub_total23
  ,item.accruals_ordervalue_sub_total24                   AS accruals_ordervalue_sub_total24
  ,item.cumulative_order_quantity_insales_units           AS cumulative_order_quantity_insales_units
  ,item.denominator                                       AS denominator
  ,item.tax_amount                                        AS tax_amount
  ,item.num_erator                                        AS num_erator
  ,item.order_sale_value                                  AS order_sale_value
  ,item.is_new                                            AS is_new
  ,item.is_deleted                                        AS is_deleted
  ,item.created_on_date_id                                AS created_on_date_id
  ,item.translation_date_id                               AS translation_date_id
  ,item.plant_code                                        AS plant_code
  ,item.payer_code                                        AS payer_code
  ,item.shipto_party_code                                 AS shipto_party_code
  ,item.complex_flag_code                                 AS complex_flag_code
  ,item.sub_material_code                                 AS sub_material_code
  ,item.changed_on_date_id                                AS changed_on_date_id
  ,item.cancel_reject_quantity                            AS cancel_reject_quantity
  ,item.cancel_reject_value                               AS cancel_reject_value
  ,item.reject_quantity                                   AS reject_quantity
  ,item.reject_value                                      AS reject_value
  ,item.sap_order_number                                  AS sap_order_number
  ,item.yre_value                                         AS yre_value
  ,item.target_value                                      AS target_value
  ,item.actual_order_quantity                             AS actual_order_quantity
  ,item.sales_document_item_category                      AS sales_document_item_category
  ,item.sli_parameter_code                                AS sli_parameter_code
  ,item.delivery_created_date                             AS delivery_created_date
  ,item.subtotal1                                         AS subtotal1
  ,item.subtotal2                                         AS subtotal2
  ,item.cost_document_currency                            AS cost_document_currency
  ,item.open_orders_value                                 AS open_orders_value
  ,item.open_orders_quantity                              AS open_orders_quantity
  ,item.price_exchange_rate_date                          AS price_exchange_rate_date
  ,item.spec                                              AS spec
  ,item.deliver_quantity                                  AS deliver_quantity
  ,item.shipto_po_type                                    AS shipto_po_type
  ,item.item_status                                       AS item_status
  ,item.delivery_status                                   AS delivery_status
  ,header.schedule_line_delivery_date                     AS schedule_line_delivery_date_header_level
  ,header.purchase_order_type_code                        AS purchase_order_type_code
  ,header.record_creation_date_in_source_system           AS record_creation_date_in_source_system
FROM ldldws.fact_sales_order_item item
LEFT JOIN ldldws.fact_sales_order_header header
ON item.document_number = header.sales_document_number
--WHERE item.pt_sellin_month >= DATE_FORMAT(ADD_MONTHS(DATE_SUB(CURRENT_TIMESTAMP, 1), -3), 'yyyy-MM')
--AND item.document_date >= CONCAT(DATE_FORMAT(ADD_MONTHS(DATE_ADD(CURRENT_TIMESTAMP, -1), -2), 'yyyy-MM'), '-01')
;
