.PHONY: install
install:
	cargo build

.PHONY: test
test:
	cargo test

.PHONY: test_coverage
test_coverage:
	cargo tarpaulin

.PHONY: test_watch
test_watch:
	cargo watch -x test

.PHONY: lint
lint:
	cargo clippy

.PHONY: format
format:
	cargo fmt

.PHONY: before_commit
before_commit: test format lint

.PHONY: run
run:
	cargo run
