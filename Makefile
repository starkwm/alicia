all: test

lint:
	swiftlint lint

format:
	swiftformat Sources/**/* Tests/**/*

test:
	swift test --parallel --enable-code-coverage

coverage:
	$(eval BIN_PATH := $(shell swift build --show-bin-path))
	$(eval XCTEST_PATH := $(shell find $(BIN_PATH) -name '*.xctest'))
	$(eval BASE_NAME := $(shell basename $(XCTEST_PATH) .xctest))
	@xcrun llvm-cov report \
		$(XCTEST_PATH)/Contents/MacOS/$(BASE_NAME) \
		--instr-profile=.build/debug/codecov/default.profdata \
		--ignore-filename-regex=".build|Tests" \
		--use-color

clean:
	swift package clean

.PHONY: all lint format test clean
