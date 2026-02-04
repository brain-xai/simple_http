BINARY_NAME=simple_http
BIN_DIR=bin
BINARY_PATH=$(BIN_DIR)/$(BINARY_NAME)

.PHONY: all build clean run

all: build

build:
	@mkdir -p $(BIN_DIR)
	@echo "Building $(BINARY_PATH)..."
	@go build -o $(BINARY_PATH) .
	@echo "Build complete: $(BINARY_PATH)"

clean:
	@echo "Cleaning $(BIN_DIR)..."
	@rm -rf $(BIN_DIR)
	@echo "Clean complete"

run: build
	@echo "Running $(BINARY_PATH)..."
	@$(BINARY_PATH)
