-- +goose Up
-- +goose StatementBegin
CREATE TABLE messages_attachments (
    id bigserial PRIMARY KEY,
    discord_id text UNIQUE NOT NULL,
    message_id bigint REFERENCES messages(id) ON DELETE CASCADE NOT NULL,
    source_uri text,
    discord_source_uri text NOT NULL,
    width integer,
    height integer,
    created_at timestamp NOT NULL DEFAULT now()
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS messages_attachments;
-- +goose StatementEnd
