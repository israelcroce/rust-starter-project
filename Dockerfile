# Using official rust base image
FROM rust:alpine

# Set the application directory
WORKDIR /app

# Install musl-tools to make many crates compile successfully
RUN apk add --no-cache musl-dev

# Install cargo-make
RUN cargo install cargo-make

# Install cargo-watch
RUN cargo install cargo-watch