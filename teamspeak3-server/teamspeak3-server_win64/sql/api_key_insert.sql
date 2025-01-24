INSERT INTO api_keys 
(server_id,
 api_key_hash,
 api_key_owner_dbid,
 api_key_scope,
 api_key_created_at,
 api_key_expires_at)
VALUES
(:server_id:,
 :api_key_hash:,
 (SELECT client_id FROM clients WHERE client_id = :api_key_owner_dbid: AND (server_id = :server_id: OR server_id = 0)),
 :api_key_scope:,
 :api_key_created_at:,
 :api_key_expires_at:)->api_key_id;
