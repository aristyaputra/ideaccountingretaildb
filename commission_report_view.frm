TYPE=VIEW
query=select `d`.`date_trn` AS `date_trn`,`a`.`no_service` AS `no_service`,concat(`b`.`first_name`,\' \',`b`.`last_name`) AS `nama`,`c`.`service_name` AS `service_name`,`a`.`qty` AS `qty`,`a`.`price` AS `price`,`a`.`nominal` AS `nominal`,`d`.`notes` AS `notes`,(case when (`b`.`grade` = \'Senior\') then `c`.`senior_commission` when (`b`.`grade` = \'Junior\') then `c`.`junior_commission` end) AS `rate_commission`,(case when (`b`.`grade` = \'Senior\') then (`a`.`qty` * `c`.`senior_commission`) when (`b`.`grade` = \'Junior\') then (`a`.`qty` * `c`.`junior_commission`) end) AS `commission` from (((`ideaccounting_dev`.`trn_service_det` `a` join `ideaccounting_dev`.`trn_service_head` `d` on((`d`.`no_service` = `a`.`no_service`))) join `ideaccounting_dev`.`mst_employee` `b` on((`b`.`id_employee` = `a`.`id_employee`))) join `ideaccounting_dev`.`mst_service` `c` on((`c`.`id_service` = `a`.`id_service`))) order by `d`.`date_trn`,`a`.`no_service`
md5=472e0ef0b2dee1c2a5884f7dac148f0c
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:31:59
create-version=1
source=select `d`.`date_trn` AS `date_trn`,`a`.`no_service` AS `no_service`,concat(`b`.`first_name`,\' \',`b`.`last_name`) AS `nama`,`c`.`service_name` AS `service_name`,`a`.`qty` AS `qty`,`a`.`price` AS `price`,`a`.`nominal` AS `nominal`,`d`.`notes` AS `notes`,(case when (`b`.`grade` = \'Senior\') then `c`.`senior_commission` when (`b`.`grade` = \'Junior\') then `c`.`junior_commission` end) AS `rate_commission`,(case when (`b`.`grade` = \'Senior\') then (`a`.`qty` * `c`.`senior_commission`) when (`b`.`grade` = \'Junior\') then (`a`.`qty` * `c`.`junior_commission`) end) AS `commission` from (((`trn_service_det` `a` join `trn_service_head` `d` on((`d`.`no_service` = `a`.`no_service`))) join `mst_employee` `b` on((`b`.`id_employee` = `a`.`id_employee`))) join `mst_service` `c` on((`c`.`id_service` = `a`.`id_service`))) order by `d`.`date_trn`,`a`.`no_service`
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `d`.`date_trn` AS `date_trn`,`a`.`no_service` AS `no_service`,concat(`b`.`first_name`,\' \',`b`.`last_name`) AS `nama`,`c`.`service_name` AS `service_name`,`a`.`qty` AS `qty`,`a`.`price` AS `price`,`a`.`nominal` AS `nominal`,`d`.`notes` AS `notes`,(case when (`b`.`grade` = \'Senior\') then `c`.`senior_commission` when (`b`.`grade` = \'Junior\') then `c`.`junior_commission` end) AS `rate_commission`,(case when (`b`.`grade` = \'Senior\') then (`a`.`qty` * `c`.`senior_commission`) when (`b`.`grade` = \'Junior\') then (`a`.`qty` * `c`.`junior_commission`) end) AS `commission` from (((`ideaccounting_dev`.`trn_service_det` `a` join `ideaccounting_dev`.`trn_service_head` `d` on((`d`.`no_service` = `a`.`no_service`))) join `ideaccounting_dev`.`mst_employee` `b` on((`b`.`id_employee` = `a`.`id_employee`))) join `ideaccounting_dev`.`mst_service` `c` on((`c`.`id_service` = `a`.`id_service`))) order by `d`.`date_trn`,`a`.`no_service`
