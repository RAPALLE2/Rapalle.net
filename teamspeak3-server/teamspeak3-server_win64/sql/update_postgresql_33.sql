CREATE TABLE api_keys (
  api_key_id SERIAL PRIMARY KEY NOT NULL,
  server_id INTEGER NOT NULL,
  api_key_hash VARCHAR(44) NOT NULL,
  api_key_owner_dbid INTEGER NOT NULL,
  api_key_scope INTEGER NOT NULL,
  api_key_created_at INTEGER NOT NULL,
  api_key_expires_at INTEGER NOT NULL
);
