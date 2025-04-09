-- +goose Up
-- +goose StatementBegin
ALTER TABLE channels ADD COLUMN nsfw BOOLEAN NOT NULL DEFAULT FALSE;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE channels DROP COLUMN IF EXISTS nsfw;
-- +goose StatementEnd
