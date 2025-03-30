# CustomHost S3

A Nginx-based reverse proxy configuration for serving content from an S3-compatible storage backend.

## Overview

This project provides a Docker container that runs Nginx configured to proxy requests to an S3 bucket. It's useful for serving static websites or content from S3 storage while maintaining custom domain configuration.

## Prerequisites

- Docker
- Docker Compose
- Make (optional, for using provided Makefile commands)

## Configuration

Environment variables are used to configure the S3 backend:

- `S3_DOMAIN`: The S3 endpoint domain (e.g., example.com)
- `S3_BUCKET`: The name of the S3 bucket (e.g., bangunsite)
- `S3_SCHEME`: The protocol scheme (http/https)

Configure these variables in the `.env` file.

## Usage

### Build the Image

```bash
make build
```

### Run the Container

```bash
make run
```

## Project Structure

```
.
├── docker/
├── nginx/
│   ├── nginx.conf    # Main Nginx configuration
│   └── start.sh      # Container entrypoint script
├── .env              # Environment configuration
├── Makefile          # Build and run commands
└── README.md         # This file
```