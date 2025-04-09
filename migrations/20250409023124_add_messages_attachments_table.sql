-- +goose Up
-- +goose StatementBegin
CREATE TABLE messages_attachments (
    id SERIAL PRIMARY KEY,
    message_id INTEGER NOT NULL REFERENCES messages(id) ON DELETE CASCADE,
    attachment_url TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    nsfw BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE INDEX idx_messages_attachments_message_id ON messages_attachments(message_id);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS messages_attachments;
-- +goose StatementEnd
