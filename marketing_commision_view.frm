TYPE=VIEW
query=select `a`.`no_sales` AS `no_sales`,`a`.`no_sales_order` AS `no_sales_order`,concat((case when isnull(`d`.`first_name`) then \'\' else `d`.`first_name` end),\' \',(case when isnull(`d`.`last_name`) then \'\' else `d`.`last_name` end)) AS `marketing`,`a`.`subtotal` AS `subtotal`,`e`.`city_name` AS `city_name`,(case when isnull(`c`.`comission`) then 0 else `c`.`comission` end) AS `persen_comission`,((`c`.`comission` / 100) * `a`.`subtotal`) AS `commision`,`a`.`date_trn` AS `date_trn`,`c`.`city_code` AS `city_code`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city`,(select `func_get_defcurr`()) AS `curr` from ((((`ideaccounting_dev`.`trn_sales_head` `a` join `ideaccounting_dev`.`trn_sales_order_head` `b` on((`b`.`no_sales_order` = `a`.`no_sales_order`))) join `ideaccounting_dev`.`mst_marketing` `c` on((`c`.`id_employee` = `b`.`id_employee`))) join `ideaccounting_dev`.`mst_employee` `d` on((`d`.`id_employee` = `c`.`id_employee`))) join `ideaccounting_dev`.`mst_city` `e` on((`e`.`city_code` = `c`.`city_code`)))
md5=00fa141f1adbcbed01a9b604f47dbd04
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:31:59
create-version=1
source=select `a`.`no_sales` AS `no_sales`,`a`.`no_sales_order` AS `no_sales_order`,concat((case when isnull(`d`.`first_name`) then \'\' else `d`.`first_name` end),\' \',(case when isnull(`d`.`last_name`) then \'\' else `d`.`last_name` end)) AS `marketing`,`a`.`subtotal` AS `subtotal`,`e`.`city_name` AS `city_name`,(case when isnull(`c`.`comission`) then 0 else `c`.`comission` end) AS `persen_comission`,((`c`.`comission` / 100) * `a`.`subtotal`) AS `commision`,`a`.`date_trn` AS `date_trn`,`c`.`city_code` AS `city_code`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name`,(select `mst_company`.`address` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_address`,(select `mst_company`.`city` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_city`,(select `func_get_defcurr`()) AS `curr` from ((((`trn_sales_head` `a` join `trn_sales_order_head` `b` on((`b`.`no_sales_order` = `a`.`no_sales_order`))) join `mst_marketing` `c` on((`c`.`id_employee` = `b`.`id_employee`))) join `mst_employee` `d` on((`d`.`id_employee` = `c`.`id_employee`))) join `mst_city` `e` on((`e`.`city_code` = `c`.`city_code`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`no_sales` AS `no_sales`,`a`.`no_sales_order` AS `no_sales_order`,concat((case when isnull(`d`.`first_name`) then \'\' else `d`.`first_name` end),\' \',(case when isnull(`d`.`last_name`) then \'\' else `d`.`last_name` end)) AS `marketing`,`a`.`subtotal` AS `subtotal`,`e`.`city_name` AS `city_name`,(case when isnull(`c`.`comission`) then 0 else `c`.`comission` end) AS `persen_comission`,((`c`.`comission` / 100) * `a`.`subtotal`) AS `commision`,`a`.`date_trn` AS `date_trn`,`c`.`city_code` AS `city_code`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city`,(select `func_get_defcurr`()) AS `curr` from ((((`ideaccounting_dev`.`trn_sales_head` `a` join `ideaccounting_dev`.`trn_sales_order_head` `b` on((`b`.`no_sales_order` = `a`.`no_sales_order`))) join `ideaccounting_dev`.`mst_marketing` `c` on((`c`.`id_employee` = `b`.`id_employee`))) join `ideaccounting_dev`.`mst_employee` `d` on((`d`.`id_employee` = `c`.`id_employee`))) join `ideaccounting_dev`.`mst_city` `e` on((`e`.`city_code` = `c`.`city_code`)))
