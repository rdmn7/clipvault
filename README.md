# Clipvault

A self-hosted universal clipboard for private notes, code, Markdown, JSON, images, and document attachments.

## Features

- Username/password authentication with persistent signed sessions
- Private clips with optional sharing for legacy/plaintext clips
- Owner-only editing and recipient-side removal of shared clips
- System, dark, and light themes
- Search across clips visible to the signed-in user
- Drag-and-drop attachments: up to 10 files, 50 MB each
- Browser-side encrypted clip support with a recovery-key model

## Run locally

1. Copy `.env.example` to `.env` and set strong, unique values.
2. Start the stack:

```sh
docker compose up -d --build
```

3. Open the service through your configured reverse proxy or tunnel.

## Persistent data

Runtime data is stored in `data/` and is deliberately excluded from Git. It contains user records, clips, uploads, and other sensitive content. Back it up securely; never commit it.

## Security notes

- This repository intentionally contains no production credentials, session secrets, user data, or Cloudflare account tokens.
- If using browser-side encryption, save the displayed recovery key offline. Losing it makes encrypted clips unrecoverable.
- Use HTTPS in production.

## Development checks

```sh
node --check server.js
node --check public/app.js
docker compose config --quiet
docker compose build clipboard
```
