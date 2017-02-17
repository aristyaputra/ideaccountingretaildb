TYPE=VIEW
query=select (case when isnull(`ideaccounting_dev`.`i_upload_path`.`path`) then \'\' else `ideaccounting_dev`.`i_upload_path`.`path` end) AS `path` from `ideaccounting_dev`.`i_upload_path` where (`ideaccounting_dev`.`i_upload_path`.`form` = \'Logo\')
md5=6c997153e018ae84cdd03d2061fa1fbf
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:00
create-version=1
source=select (case when isnull(`i_upload_path`.`path`) then \'\' else `i_upload_path`.`path` end) AS `path` from `i_upload_path` where (`i_upload_path`.`form` = \'Logo\')
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select (case when isnull(`ideaccounting_dev`.`i_upload_path`.`path`) then \'\' else `ideaccounting_dev`.`i_upload_path`.`path` end) AS `path` from `ideaccounting_dev`.`i_upload_path` where (`ideaccounting_dev`.`i_upload_path`.`form` = \'Logo\')
