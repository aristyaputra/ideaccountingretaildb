TYPE=VIEW
query=select `a`.`no_sales` AS `no_sales`,cast(`a`.`date_trn` as date) AS `date_trn`,`a`.`id_customer` AS `id_customer`,`b`.`id_item` AS `id_item`,`d`.`item_name` AS `item_name`,`b`.`price` AS `price`,`b`.`qty` AS `qty`,`b`.`nominal` AS `nominal`,(case when isnull(`a`.`customer`) then concat((case when isnull(`c`.`first_name`) then \'\' else `c`.`first_name` end),\' \',(case when isnull(`c`.`last_name`) then \'\' else `c`.`last_name` end)) else `a`.`customer` end) AS `nama_customer`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city`,(case when (`a`.`flag_member` = 0) then \'Non Member\' when (`a`.`flag_member` = 1) then \'Member\' end) AS `status_member`,`a`.`subtotal` AS `subtotal`,((`a`.`discount` * `a`.`subtotal`) / 100) AS `discount`,(`a`.`tax` * (`a`.`subtotal` - ((`a`.`subtotal` * `a`.`discount`) / 100))) AS `tax`,`a`.`total` AS `total`,(select `ideaccounting_dev`.`mst_currency`.`id_currency` from `ideaccounting_dev`.`mst_currency` where (`ideaccounting_dev`.`mst_currency`.`flag_default` = 1)) AS `id_currency`,`b`.`number_asc` AS `number_asc` from (((`ideaccounting_dev`.`trn_cashier_head` `a` join `ideaccounting_dev`.`trn_cashier_det` `b` on((`b`.`no_sales` = `a`.`no_sales`))) join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `b`.`id_item`))) left join `ideaccounting_dev`.`mst_customer` `c` on((`c`.`id_customer` = `a`.`id_customer`))) union all select `a`.`no_sales` AS `no_sales`,cast(`a`.`date_trn` as date) AS `date_trn`,`a`.`id_customer` AS `id_customer`,`b`.`id_service` AS `id_service`,`d`.`service_name` AS `service_name`,`b`.`price` AS `price`,`b`.`qty` AS `qty`,`b`.`nominal` AS `nominal`,(case when isnull(`a`.`customer`) then concat(`c`.`first_name`,\' \',`c`.`last_name`) else `a`.`customer` end) AS `nama_customer`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city`,(case when (`a`.`flag_member` = 0) then \'Non Member\' when (`a`.`flag_member` = 1) then \'Member\' end) AS `status_member`,`a`.`subtotal` AS `subtotal`,((`a`.`discount` * `a`.`subtotal`) / 100) AS `discount`,(`a`.`tax` * (`a`.`subtotal` - ((`a`.`subtotal` * `a`.`discount`) / 100))) AS `tax`,`a`.`total` AS `total`,(select `ideaccounting_dev`.`mst_currency`.`id_currency` from `ideaccounting_dev`.`mst_currency` where (`ideaccounting_dev`.`mst_currency`.`flag_default` = 1)) AS `id_currency`,`b`.`number_asc` AS `number_asc` from (((`ideaccounting_dev`.`trn_cashier_head` `a` join `ideaccounting_dev`.`trn_cashier_service_det` `b` on((`b`.`no_sales` = `a`.`no_sales`))) join `ideaccounting_dev`.`mst_service` `d` on((`d`.`id_service` = `b`.`id_service`))) left join `ideaccounting_dev`.`mst_customer` `c` on((`c`.`id_customer` = `a`.`id_customer`))) order by `number_asc`
md5=c9bf54906a61bc80c96c7ce49f29bf21
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:04
create-version=1
source=select `a`.`no_sales` AS `no_sales`,cast(`a`.`date_trn` as date) AS `date_trn`,`a`.`id_customer` AS `id_customer`,`b`.`id_item` AS `id_item`,`d`.`item_name` AS `item_name`,`b`.`price` AS `price`,`b`.`qty` AS `qty`,`b`.`nominal` AS `nominal`,(case when isnull(`a`.`customer`) then concat((case when isnull(`c`.`first_name`) then \'\' else `c`.`first_name` end),\' \',(case when isnull(`c`.`last_name`) then \'\' else `c`.`last_name` end)) else `a`.`customer` end) AS `nama_customer`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name`,(select `mst_company`.`address` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_address`,(select `mst_company`.`city` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_city`,(case when (`a`.`flag_member` = 0) then \'Non Member\' when (`a`.`flag_member` = 1) then \'Member\' end) AS `status_member`,`a`.`subtotal` AS `subtotal`,((`a`.`discount` * `a`.`subtotal`) / 100) AS `discount`,(`a`.`tax` * (`a`.`subtotal` - ((`a`.`subtotal` * `a`.`discount`) / 100))) AS `tax`,`a`.`total` AS `total`,(select `mst_currency`.`id_currency` from `mst_currency` where (`mst_currency`.`flag_default` = 1)) AS `id_currency`,`b`.`number_asc` AS `number_asc` from (((`trn_cashier_head` `a` join `trn_cashier_det` `b` on((`b`.`no_sales` = `a`.`no_sales`))) join `mst_item` `d` on((`d`.`id_item` = `b`.`id_item`))) left join `mst_customer` `c` on((`c`.`id_customer` = `a`.`id_customer`))) union all select `a`.`no_sales` AS `no_sales`,cast(`a`.`date_trn` as date) AS `date_trn`,`a`.`id_customer` AS `id_customer`,`b`.`id_service` AS `id_service`,`d`.`service_name` AS `service_name`,`b`.`price` AS `price`,`b`.`qty` AS `qty`,`b`.`nominal` AS `nominal`,(case when isnull(`a`.`customer`) then concat(`c`.`first_name`,\' \',`c`.`last_name`) else `a`.`customer` end) AS `nama_customer`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name`,(select `mst_company`.`address` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_address`,(select `mst_company`.`city` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_city`,(case when (`a`.`flag_member` = 0) then \'Non Member\' when (`a`.`flag_member` = 1) then \'Member\' end) AS `status_member`,`a`.`subtotal` AS `subtotal`,((`a`.`discount` * `a`.`subtotal`) / 100) AS `discount`,(`a`.`tax` * (`a`.`subtotal` - ((`a`.`subtotal` * `a`.`discount`) / 100))) AS `tax`,`a`.`total` AS `total`,(select `mst_currency`.`id_currency` from `mst_currency` where (`mst_currency`.`flag_default` = 1)) AS `id_currency`,`b`.`number_asc` AS `number_asc` from (((`trn_cashier_head` `a` join `trn_cashier_service_det` `b` on((`b`.`no_sales` = `a`.`no_sales`))) join `mst_service` `d` on((`d`.`id_service` = `b`.`id_service`))) left join `mst_customer` `c` on((`c`.`id_customer` = `a`.`id_customer`))) order by `number_asc`
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`no_sales` AS `no_sales`,cast(`a`.`date_trn` as date) AS `date_trn`,`a`.`id_customer` AS `id_customer`,`b`.`id_item` AS `id_item`,`d`.`item_name` AS `item_name`,`b`.`price` AS `price`,`b`.`qty` AS `qty`,`b`.`nominal` AS `nominal`,(case when isnull(`a`.`customer`) then concat((case when isnull(`c`.`first_name`) then \'\' else `c`.`first_name` end),\' \',(case when isnull(`c`.`last_name`) then \'\' else `c`.`last_name` end)) else `a`.`customer` end) AS `nama_customer`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city`,(case when (`a`.`flag_member` = 0) then \'Non Member\' when (`a`.`flag_member` = 1) then \'Member\' end) AS `status_member`,`a`.`subtotal` AS `subtotal`,((`a`.`discount` * `a`.`subtotal`) / 100) AS `discount`,(`a`.`tax` * (`a`.`subtotal` - ((`a`.`subtotal` * `a`.`discount`) / 100))) AS `tax`,`a`.`total` AS `total`,(select `ideaccounting_dev`.`mst_currency`.`id_currency` from `ideaccounting_dev`.`mst_currency` where (`ideaccounting_dev`.`mst_currency`.`flag_default` = 1)) AS `id_currency`,`b`.`number_asc` AS `number_asc` from (((`ideaccounting_dev`.`trn_cashier_head` `a` join `ideaccounting_dev`.`trn_cashier_det` `b` on((`b`.`no_sales` = `a`.`no_sales`))) join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `b`.`id_item`))) left join `ideaccounting_dev`.`mst_customer` `c` on((`c`.`id_customer` = `a`.`id_customer`))) union all select `a`.`no_sales` AS `no_sales`,cast(`a`.`date_trn` as date) AS `date_trn`,`a`.`id_customer` AS `id_customer`,`b`.`id_service` AS `id_service`,`d`.`service_name` AS `service_name`,`b`.`price` AS `price`,`b`.`qty` AS `qty`,`b`.`nominal` AS `nominal`,(case when isnull(`a`.`customer`) then concat(`c`.`first_name`,\' \',`c`.`last_name`) else `a`.`customer` end) AS `nama_customer`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city`,(case when (`a`.`flag_member` = 0) then \'Non Member\' when (`a`.`flag_member` = 1) then \'Member\' end) AS `status_member`,`a`.`subtotal` AS `subtotal`,((`a`.`discount` * `a`.`subtotal`) / 100) AS `discount`,(`a`.`tax` * (`a`.`subtotal` - ((`a`.`subtotal` * `a`.`discount`) / 100))) AS `tax`,`a`.`total` AS `total`,(select `ideaccounting_dev`.`mst_currency`.`id_currency` from `ideaccounting_dev`.`mst_currency` where (`ideaccounting_dev`.`mst_currency`.`flag_default` = 1)) AS `id_currency`,`b`.`number_asc` AS `number_asc` from (((`ideaccounting_dev`.`trn_cashier_head` `a` join `ideaccounting_dev`.`trn_cashier_service_det` `b` on((`b`.`no_sales` = `a`.`no_sales`))) join `ideaccounting_dev`.`mst_service` `d` on((`d`.`id_service` = `b`.`id_service`))) left join `ideaccounting_dev`.`mst_customer` `c` on((`c`.`id_customer` = `a`.`id_customer`))) order by `number_asc`