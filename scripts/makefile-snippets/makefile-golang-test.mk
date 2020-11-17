DIST_DIR ?= dist

export GOFLAGS=-mod=vendor
export GO111MODULE=on

test:
	@mkdir -p $(DIST_DIR)
	@set -o pipefail; go test $(TEST_FLAGS) -coverprofile=$(DIST_DIR)/coverage.out  -covermode=atomic  `go list ./... | grep -v utilstest` | tee $(DIST_DIR)/test.out

test-verbose: TEST_FLAGS := "-v"
test-verbose: test

cover:
	@go tool cover -html $(DIST_DIR)/coverage.out -o $(DIST_DIR)/coverage.html

junit-report:
	@go-junit-report < $(DIST_DIR)/test.out > $(DIST_DIR)/junit.xml

.PHONY: \
	test \
	junit-report \
	cover
