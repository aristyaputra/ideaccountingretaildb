TYPE=VIEW
query=select `ideaccounting_dev`.`mst_department_produksi`.`department_id` AS `department_id`,`ideaccounting_dev`.`mst_department_produksi`.`department_name` AS `department_name`,`ideaccounting_dev`.`mst_department_produksi`.`notes` AS `notes`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from `ideaccounting_dev`.`mst_department_produksi` where ((case when isnull(`ideaccounting_dev`.`mst_department_produksi`.`flag_active`) then 0 else 1 end) = 1)
md5=dad81118b8575f35e3aaa964390360cb
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:03
create-version=1
source=select `mst_department_produksi`.`department_id` AS `department_id`,`mst_department_produksi`.`department_name` AS `department_name`,`mst_department_produksi`.`notes` AS `notes`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name`,(select `mst_company`.`address` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_address`,(select `mst_company`.`city` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_city` from `mst_department_produksi` where ((case when isnull(`mst_department_produksi`.`flag_active`) then 0 else 1 end) = 1)
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `ideaccounting_dev`.`mst_department_produksi`.`department_id` AS `department_id`,`ideaccounting_dev`.`mst_department_produksi`.`department_name` AS `department_name`,`ideaccounting_dev`.`mst_department_produksi`.`notes` AS `notes`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from `ideaccounting_dev`.`mst_department_produksi` where ((case when isnull(`ideaccounting_dev`.`mst_department_produksi`.`flag_active`) then 0 else 1 end) = 1)
