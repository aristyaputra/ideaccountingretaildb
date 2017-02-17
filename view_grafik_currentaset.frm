TYPE=VIEW
query=select `c`.`account_name` AS `account_name`,sum((case when (`a`.`nominal` > 0) then abs(`a`.`nominal`) else 0 end)) AS `debet`,sum((case when (`a`.`nominal` < 0) then abs(`a`.`nominal`) else 0 end)) AS `credit` from ((`ideaccounting_dev`.`trn_ledger_det` `a` join `ideaccounting_dev`.`trn_ledger_head` `b` on((`b`.`no_ledger` = `a`.`no_ledger`))) join `ideaccounting_dev`.`mst_account` `c` on((`c`.`id_account` = `a`.`id_account`))) where ((`c`.`golongan` = 1) and (year(`b`.`date_trn`) = `get_year`()) and (`b`.`post_from` <> \'Close Period\') and `a`.`id_account` in (select `ideaccounting_dev`.`i_cashbank_setup`.`id_account` from `ideaccounting_dev`.`i_cashbank_setup`)) group by `c`.`account_name` order by `a`.`id_account`
md5=0a858bdca50cc22390962b45a37f4c93
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:03
create-version=1
source=select `c`.`account_name` AS `account_name`,sum((case when (`a`.`nominal` > 0) then abs(`a`.`nominal`) else 0 end)) AS `debet`,sum((case when (`a`.`nominal` < 0) then abs(`a`.`nominal`) else 0 end)) AS `credit` from ((`trn_ledger_det` `a` join `trn_ledger_head` `b` on((`b`.`no_ledger` = `a`.`no_ledger`))) join `mst_account` `c` on((`c`.`id_account` = `a`.`id_account`))) where ((`c`.`golongan` = 1) and (year(`b`.`date_trn`) = `get_year`()) and (`b`.`post_from` <> \'Close Period\') and `a`.`id_account` in (select `i_cashbank_setup`.`id_account` from `i_cashbank_setup`)) group by `c`.`account_name` order by `a`.`id_account`
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `c`.`account_name` AS `account_name`,sum((case when (`a`.`nominal` > 0) then abs(`a`.`nominal`) else 0 end)) AS `debet`,sum((case when (`a`.`nominal` < 0) then abs(`a`.`nominal`) else 0 end)) AS `credit` from ((`ideaccounting_dev`.`trn_ledger_det` `a` join `ideaccounting_dev`.`trn_ledger_head` `b` on((`b`.`no_ledger` = `a`.`no_ledger`))) join `ideaccounting_dev`.`mst_account` `c` on((`c`.`id_account` = `a`.`id_account`))) where ((`c`.`golongan` = 1) and (year(`b`.`date_trn`) = `get_year`()) and (`b`.`post_from` <> \'Close Period\') and `a`.`id_account` in (select `ideaccounting_dev`.`i_cashbank_setup`.`id_account` from `ideaccounting_dev`.`i_cashbank_setup`)) group by `c`.`account_name` order by `a`.`id_account`
