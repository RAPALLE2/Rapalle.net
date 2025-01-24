select S.server_id as server_id, S.server_machine_id as server_machine_id, S.server_port as server_port, S.server_autostart as server_autostart, PNAME.value as virtualserver_name, PUID.value as virtualserver_unique_identifier 
from servers S 
left join server_properties PNAME on S.server_id=PNAME.server_id and PNAME.ident='virtualserver_name'
left join server_properties PUID on S.server_id=PUID.server_id and PUID.ident='virtualserver_unique_identifier'
where not (S.server_id = 0)
order by S.server_id;