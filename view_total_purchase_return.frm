TYPE=VIEW
query=select sum(`g`.`qty`) AS `qty`,`g`.`no_purchase_return` AS `no_purchase_return`,`g`.`id_item` AS `id_item`,`g`.`no_purchase` AS `no_purchase` from `ideaccounting_dev`.`trn_purchase_return_det` `g` group by `g`.`no_purchase_return`,`g`.`id_item`,`g`.`no_purchase`
md5=9cc5e1140105ec0c887a205e81f9a76f
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:06
create-version=1
source=select sum(`g`.`qty`) AS `qty`,`g`.`no_purchase_return` AS `no_purchase_return`,`g`.`id_item` AS `id_item`,`g`.`no_purchase` AS `no_purchase` from `trn_purchase_return_det` `g` group by `g`.`no_purchase_return`,`g`.`id_item`,`g`.`no_purchase`
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select sum(`g`.`qty`) AS `qty`,`g`.`no_purchase_return` AS `no_purchase_return`,`g`.`id_item` AS `id_item`,`g`.`no_purchase` AS `no_purchase` from `ideaccounting_dev`.`trn_purchase_return_det` `g` group by `g`.`no_purchase_return`,`g`.`id_item`,`g`.`no_purchase`
