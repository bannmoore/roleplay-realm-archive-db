-- +goose Up
-- +goose StatementBegin
CREATE TABLE sessions(
  user_id bigint UNIQUE REFERENCES users ON DELETE CASCADE,
  token text,
  expires_at timestamp
);

-- +goose StatementEnd
-- +goose Down
-- +goose StatementBegin
DROP TABLE sessions;

-- +goose StatementEnd
