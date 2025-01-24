CREATE TABLE temporary_passwords (
  server_id INTEGER UNSIGNED NOT NULL,
  temporary_password_hash VARCHAR(28) NOT NULL,
  temporary_password_plaintext VARCHAR(255) NOT NULL,
  temporary_password_creator_id INTEGER NOT NULL,
  temporary_password_start_timestamp INTEGER UNSIGNED NOT NULL,
  temporary_password_end_timestamp INTEGER UNSIGNED NOT NULL,
  temporary_password_channel_id INTEGER NOT NULL,
  temporary_password_channel_password VARCHAR(255),
  temporary_password_description VARCHAR(255),
  PRIMARY KEY(server_id, temporary_password_hash)
);