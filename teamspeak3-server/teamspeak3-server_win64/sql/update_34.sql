CREATE INDEX index_servers_machine_id ON servers (server_machine_id);
CREATE INDEX index_clients_server_id_lastconnected_unique_id ON clients (server_id, client_lastconnected, client_unique_id);
CREATE INDEX index_group_server_to_client_serverid_id1 ON group_server_to_client (server_id, id1);