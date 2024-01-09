FROM rust:latest

RUN apt-get update && apt-get install -y lldb gdb valgrind

WORKDIR /app

COPY . .
