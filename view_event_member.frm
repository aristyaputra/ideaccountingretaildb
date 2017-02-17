TYPE=VIEW
query=select `a`.`id_event` AS `id_event`,`a`.`id_member` AS `id_member`,(case when isnull(`b`.`event_name`) then \'\' else `b`.`event_name` end) AS `event_name`,`b`.`start_date` AS `start_date`,`b`.`end_date` AS `end_date`,(case when isnull(`a`.`member_name`) then \'\' else `a`.`member_name` end) AS `member_name`,(case when isnull(`a`.`nip_member`) then \'\' else `a`.`nip_member` end) AS `nip_member`,(case when isnull(`a`.`position`) then \'\' else `a`.`position` end) AS `position`,(case when isnull(`a`.`area`) then \'\' else `a`.`area` end) AS `area`,(case when isnull(`a`.`region`) then \'\' else `a`.`region` end) AS `region`,`a`.`photo_path` AS `photo_path` from (`ideaccounting_dev`.`mst_event_member` `a` join `ideaccounting_dev`.`mst_event` `b` on((`b`.`id_event` = `a`.`id_event`)))
md5=d7803e1b6c7ce41cf62cfb586d360011
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:03
create-version=1
source=select `a`.`id_event` AS `id_event`,`a`.`id_member` AS `id_member`,(case when isnull(`b`.`event_name`) then \'\' else `b`.`event_name` end) AS `event_name`,`b`.`start_date` AS `start_date`,`b`.`end_date` AS `end_date`,(case when isnull(`a`.`member_name`) then \'\' else `a`.`member_name` end) AS `member_name`,(case when isnull(`a`.`nip_member`) then \'\' else `a`.`nip_member` end) AS `nip_member`,(case when isnull(`a`.`position`) then \'\' else `a`.`position` end) AS `position`,(case when isnull(`a`.`area`) then \'\' else `a`.`area` end) AS `area`,(case when isnull(`a`.`region`) then \'\' else `a`.`region` end) AS `region`,`a`.`photo_path` AS `photo_path` from (`mst_event_member` `a` join `mst_event` `b` on((`b`.`id_event` = `a`.`id_event`)))
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `a`.`id_event` AS `id_event`,`a`.`id_member` AS `id_member`,(case when isnull(`b`.`event_name`) then \'\' else `b`.`event_name` end) AS `event_name`,`b`.`start_date` AS `start_date`,`b`.`end_date` AS `end_date`,(case when isnull(`a`.`member_name`) then \'\' else `a`.`member_name` end) AS `member_name`,(case when isnull(`a`.`nip_member`) then \'\' else `a`.`nip_member` end) AS `nip_member`,(case when isnull(`a`.`position`) then \'\' else `a`.`position` end) AS `position`,(case when isnull(`a`.`area`) then \'\' else `a`.`area` end) AS `area`,(case when isnull(`a`.`region`) then \'\' else `a`.`region` end) AS `region`,`a`.`photo_path` AS `photo_path` from (`ideaccounting_dev`.`mst_event_member` `a` join `ideaccounting_dev`.`mst_event` `b` on((`b`.`id_event` = `a`.`id_event`)))
