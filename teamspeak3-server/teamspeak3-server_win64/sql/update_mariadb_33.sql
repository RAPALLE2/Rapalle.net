CREATE TABLE api_keys (
  api_key_id integer PRIMARY KEY AUTO_INCREMENT NOT NULL,
  server_id integer unsigned NOT NULL,
  api_key_hash varchar(44) NOT NULL,
  api_key_owner_dbid integer unsigned NOT NULL,
  api_key_scope integer unsigned NOT NULL,
  api_key_created_at integer unsigned NOT NULL,
  api_key_expires_at integer unsigned NOT NULL
) CHARACTER SET 'utf8mb4';
