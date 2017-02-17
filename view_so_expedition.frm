TYPE=VIEW
query=select distinct `a`.`no_delivery_order` AS `no_delivery_order`,`a`.`no_sales_order` AS `no_sales_order`,`g`.`no_ekspedisi` AS `no_ekspedisi` from ((`ideaccounting_dev`.`trn_delivery_order_head` `a` join `ideaccounting_dev`.`trn_delivery_order_det` `b` on((`b`.`no_delivery_order` = `a`.`no_delivery_order`))) join `ideaccounting_dev`.`trn_ekspedisi_det` `g` on((`g`.`no_do` = `a`.`no_delivery_order`)))
md5=b877a222497a508fb18545892163bba3
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:06
create-version=1
source=select distinct `a`.`no_delivery_order` AS `no_delivery_order`,`a`.`no_sales_order` AS `no_sales_order`,`g`.`no_ekspedisi` AS `no_ekspedisi` from ((`trn_delivery_order_head` `a` join `trn_delivery_order_det` `b` on((`b`.`no_delivery_order` = `a`.`no_delivery_order`))) join `trn_ekspedisi_det` `g` on((`g`.`no_do` = `a`.`no_delivery_order`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select distinct `a`.`no_delivery_order` AS `no_delivery_order`,`a`.`no_sales_order` AS `no_sales_order`,`g`.`no_ekspedisi` AS `no_ekspedisi` from ((`ideaccounting_dev`.`trn_delivery_order_head` `a` join `ideaccounting_dev`.`trn_delivery_order_det` `b` on((`b`.`no_delivery_order` = `a`.`no_delivery_order`))) join `ideaccounting_dev`.`trn_ekspedisi_det` `g` on((`g`.`no_do` = `a`.`no_delivery_order`)))
