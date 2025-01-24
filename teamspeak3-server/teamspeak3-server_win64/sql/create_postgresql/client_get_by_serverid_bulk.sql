 select client_id as id, 'client_unique_id' as ident, cast(client_unique_id as char) as value from clients where server_id=:server_id: union
 select client_id as id, 'client_nickname' as ident, cast(client_nickname as char) as value from clients where server_id=:server_id: union
 select client_id as id, 'client_lastconnected' as ident, cast(client_lastconnected as char) as value from clients where server_id=:server_id: union
 select client_id as id, 'client_totalconnections' as ident, cast(client_totalconnections as char) as value from clients where server_id=:server_id: union
 select id, ident, cast(value as char) from client_properties where server_id=:server_id: 
 order by id;