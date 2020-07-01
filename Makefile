all: test

lint:
	swiftlint lint

format:
	swiftformat Sources/**/* Tests/**/*

test:
	swift test

clean:
	swift package clean

.PHONY: all lint format test clean
