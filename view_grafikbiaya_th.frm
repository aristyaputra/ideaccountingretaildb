TYPE=VIEW
query=select `c`.`account_name` AS `account_name`,round(sum(`a`.`nominal`),0) AS `persent` from ((`ideaccounting_dev`.`trn_ledger_det` `a` join `ideaccounting_dev`.`trn_ledger_head` `b` on((`b`.`no_ledger` = `a`.`no_ledger`))) join `ideaccounting_dev`.`mst_account` `c` on((`c`.`id_account` = `a`.`id_account`))) where ((`c`.`golongan` = 6) and (year(`b`.`date_trn`) = `get_year`()) and (`b`.`post_from` <> \'Close Period\')) group by `c`.`account_name`
md5=71e33e9fe0e7cccbf8d825115f1f7e6d
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:04
create-version=1
source=select `c`.`account_name` AS `account_name`,round(sum(`a`.`nominal`),0) AS `persent` from ((`trn_ledger_det` `a` join `trn_ledger_head` `b` on((`b`.`no_ledger` = `a`.`no_ledger`))) join `mst_account` `c` on((`c`.`id_account` = `a`.`id_account`))) where ((`c`.`golongan` = 6) and (year(`b`.`date_trn`) = `get_year`()) and (`b`.`post_from` <> \'Close Period\')) group by `c`.`account_name`
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `c`.`account_name` AS `account_name`,round(sum(`a`.`nominal`),0) AS `persent` from ((`ideaccounting_dev`.`trn_ledger_det` `a` join `ideaccounting_dev`.`trn_ledger_head` `b` on((`b`.`no_ledger` = `a`.`no_ledger`))) join `ideaccounting_dev`.`mst_account` `c` on((`c`.`id_account` = `a`.`id_account`))) where ((`c`.`golongan` = 6) and (year(`b`.`date_trn`) = `get_year`()) and (`b`.`post_from` <> \'Close Period\')) group by `c`.`account_name`
