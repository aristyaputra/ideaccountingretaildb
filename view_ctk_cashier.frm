TYPE=VIEW
query=select `x`.`customer` AS `customer`,`x`.`cust_address` AS `cust_address`,`x`.`cust_phone` AS `cust_phone`,`x`.`no_sales` AS `no_sales`,`x`.`date_trn` AS `date_trn`,`y`.`id_item` AS `id_item`,`e`.`item_name` AS `item_name`,`y`.`qty` AS `qty`,`y`.`id_unit` AS `id_unit`,`f`.`unit` AS `unit`,`y`.`price` AS `price`,(`y`.`price` - (((`y`.`price` * `y`.`disc_nom`) / 100) * `y`.`qty`)) AS `total_net`,(`y`.`price` - ((`y`.`price` * `y`.`disc_nom`) / 100)) AS `price_net`,`y`.`nominal` AS `nominal`,`x`.`payment_method` AS `payment_method`,`x`.`term` AS `term`,`x`.`termpaydisc` AS `termpaydisc`,`x`.`discpay` AS `discpay`,`x`.`notes` AS `notes`,`x`.`subtotal` AS `subtotal`,`x`.`discount` AS `discount`,`x`.`tax` AS `tax`,`x`.`total` AS `total`,`x`.`paid` AS `paid`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from (((`ideaccounting_dev`.`trn_cashier_head` `x` join `ideaccounting_dev`.`trn_cashier_det` `y` on((`y`.`no_sales` = `x`.`no_sales`))) join `ideaccounting_dev`.`mst_item` `e` on((`e`.`id_item` = `y`.`id_item`))) join `ideaccounting_dev`.`mst_unit` `f` on((`f`.`id_unit` = `y`.`id_unit`))) union all select `x`.`customer` AS `customer`,`x`.`cust_address` AS `cust_address`,`x`.`cust_phone` AS `cust_phone`,`x`.`no_sales` AS `no_sales`,`x`.`date_trn` AS `date_trn`,`y`.`id_service` AS `id_service`,`e`.`service_name` AS `service_name`,`y`.`qty` AS `qty`,`y`.`id_unit` AS `id_unit`,`f`.`unit` AS `unit`,`y`.`price` AS `price`,(`y`.`price` - (((`y`.`price` * `y`.`disc_nom`) / 100) * `y`.`qty`)) AS `total_net`,(`y`.`price` - ((`y`.`price` * `y`.`disc_nom`) / 100)) AS `price_net`,`y`.`nominal` AS `nominal`,`x`.`payment_method` AS `payment_method`,`x`.`term` AS `term`,`x`.`termpaydisc` AS `termpaydisc`,`x`.`discpay` AS `discpay`,`x`.`notes` AS `notes`,`x`.`subtotal` AS `subtotal`,`x`.`discount` AS `discount`,`x`.`tax` AS `tax`,`x`.`total` AS `total`,`x`.`paid` AS `paid`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from (((`ideaccounting_dev`.`trn_cashier_head` `x` join `ideaccounting_dev`.`trn_cashier_service_det` `y` on((`y`.`no_sales` = `x`.`no_sales`))) join `ideaccounting_dev`.`mst_service` `e` on((`e`.`id_service` = `y`.`id_service`))) join `ideaccounting_dev`.`mst_unit` `f` on((`f`.`id_unit` = `y`.`id_unit`)))
md5=a2fc10c69bf663de4d7789164b1697fb
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:01
create-version=1
source=select `x`.`customer` AS `customer`,`x`.`cust_address` AS `cust_address`,`x`.`cust_phone` AS `cust_phone`,`x`.`no_sales` AS `no_sales`,`x`.`date_trn` AS `date_trn`,`y`.`id_item` AS `id_item`,`e`.`item_name` AS `item_name`,`y`.`qty` AS `qty`,`y`.`id_unit` AS `id_unit`,`f`.`unit` AS `unit`,`y`.`price` AS `price`,(`y`.`price` - (((`y`.`price` * `y`.`disc_nom`) / 100) * `y`.`qty`)) AS `total_net`,(`y`.`price` - ((`y`.`price` * `y`.`disc_nom`) / 100)) AS `price_net`,`y`.`nominal` AS `nominal`,`x`.`payment_method` AS `payment_method`,`x`.`term` AS `term`,`x`.`termpaydisc` AS `termpaydisc`,`x`.`discpay` AS `discpay`,`x`.`notes` AS `notes`,`x`.`subtotal` AS `subtotal`,`x`.`discount` AS `discount`,`x`.`tax` AS `tax`,`x`.`total` AS `total`,`x`.`paid` AS `paid`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name`,(select `mst_company`.`address` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_address`,(select `mst_company`.`city` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_city` from (((`trn_cashier_head` `x` join `trn_cashier_det` `y` on((`y`.`no_sales` = `x`.`no_sales`))) join `mst_item` `e` on((`e`.`id_item` = `y`.`id_item`))) join `mst_unit` `f` on((`f`.`id_unit` = `y`.`id_unit`))) union all select `x`.`customer` AS `customer`,`x`.`cust_address` AS `cust_address`,`x`.`cust_phone` AS `cust_phone`,`x`.`no_sales` AS `no_sales`,`x`.`date_trn` AS `date_trn`,`y`.`id_service` AS `id_service`,`e`.`service_name` AS `service_name`,`y`.`qty` AS `qty`,`y`.`id_unit` AS `id_unit`,`f`.`unit` AS `unit`,`y`.`price` AS `price`,(`y`.`price` - (((`y`.`price` * `y`.`disc_nom`) / 100) * `y`.`qty`)) AS `total_net`,(`y`.`price` - ((`y`.`price` * `y`.`disc_nom`) / 100)) AS `price_net`,`y`.`nominal` AS `nominal`,`x`.`payment_method` AS `payment_method`,`x`.`term` AS `term`,`x`.`termpaydisc` AS `termpaydisc`,`x`.`discpay` AS `discpay`,`x`.`notes` AS `notes`,`x`.`subtotal` AS `subtotal`,`x`.`discount` AS `discount`,`x`.`tax` AS `tax`,`x`.`total` AS `total`,`x`.`paid` AS `paid`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name`,(select `mst_company`.`address` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_address`,(select `mst_company`.`city` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_city` from (((`trn_cashier_head` `x` join `trn_cashier_service_det` `y` on((`y`.`no_sales` = `x`.`no_sales`))) join `mst_service` `e` on((`e`.`id_service` = `y`.`id_service`))) join `mst_unit` `f` on((`f`.`id_unit` = `y`.`id_unit`)))
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `x`.`customer` AS `customer`,`x`.`cust_address` AS `cust_address`,`x`.`cust_phone` AS `cust_phone`,`x`.`no_sales` AS `no_sales`,`x`.`date_trn` AS `date_trn`,`y`.`id_item` AS `id_item`,`e`.`item_name` AS `item_name`,`y`.`qty` AS `qty`,`y`.`id_unit` AS `id_unit`,`f`.`unit` AS `unit`,`y`.`price` AS `price`,(`y`.`price` - (((`y`.`price` * `y`.`disc_nom`) / 100) * `y`.`qty`)) AS `total_net`,(`y`.`price` - ((`y`.`price` * `y`.`disc_nom`) / 100)) AS `price_net`,`y`.`nominal` AS `nominal`,`x`.`payment_method` AS `payment_method`,`x`.`term` AS `term`,`x`.`termpaydisc` AS `termpaydisc`,`x`.`discpay` AS `discpay`,`x`.`notes` AS `notes`,`x`.`subtotal` AS `subtotal`,`x`.`discount` AS `discount`,`x`.`tax` AS `tax`,`x`.`total` AS `total`,`x`.`paid` AS `paid`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from (((`ideaccounting_dev`.`trn_cashier_head` `x` join `ideaccounting_dev`.`trn_cashier_det` `y` on((`y`.`no_sales` = `x`.`no_sales`))) join `ideaccounting_dev`.`mst_item` `e` on((`e`.`id_item` = `y`.`id_item`))) join `ideaccounting_dev`.`mst_unit` `f` on((`f`.`id_unit` = `y`.`id_unit`))) union all select `x`.`customer` AS `customer`,`x`.`cust_address` AS `cust_address`,`x`.`cust_phone` AS `cust_phone`,`x`.`no_sales` AS `no_sales`,`x`.`date_trn` AS `date_trn`,`y`.`id_service` AS `id_service`,`e`.`service_name` AS `service_name`,`y`.`qty` AS `qty`,`y`.`id_unit` AS `id_unit`,`f`.`unit` AS `unit`,`y`.`price` AS `price`,(`y`.`price` - (((`y`.`price` * `y`.`disc_nom`) / 100) * `y`.`qty`)) AS `total_net`,(`y`.`price` - ((`y`.`price` * `y`.`disc_nom`) / 100)) AS `price_net`,`y`.`nominal` AS `nominal`,`x`.`payment_method` AS `payment_method`,`x`.`term` AS `term`,`x`.`termpaydisc` AS `termpaydisc`,`x`.`discpay` AS `discpay`,`x`.`notes` AS `notes`,`x`.`subtotal` AS `subtotal`,`x`.`discount` AS `discount`,`x`.`tax` AS `tax`,`x`.`total` AS `total`,`x`.`paid` AS `paid`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from (((`ideaccounting_dev`.`trn_cashier_head` `x` join `ideaccounting_dev`.`trn_cashier_service_det` `y` on((`y`.`no_sales` = `x`.`no_sales`))) join `ideaccounting_dev`.`mst_service` `e` on((`e`.`id_service` = `y`.`id_service`))) join `ideaccounting_dev`.`mst_unit` `f` on((`f`.`id_unit` = `y`.`id_unit`)))
