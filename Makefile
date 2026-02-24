# DuckDB community extensions CI runs:
# - "make configure_ci" to set up the environment (it calls "configure" below)
# - "make release" to build the extension library and append metadata
# - "make test_release" to run sqllogictest tests from test/sql/

PROJ_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

EXTENSION_NAME=maxmind
EXTENSION_VERSION=v$(shell awk -F'"' '/\.version/{print $$2}' build.zig.zon)
TARGET_DUCKDB_VERSION=v1.2.0

include extension-ci-tools/makefiles/c_api_extensions/base.Makefile

ZIG_VERSION=0.15.2
ZIG_ARCH=$(shell uname -m | sed 's/arm64/aarch64/')
ZIG_OS=$(shell if [ "$$(uname -s)" = "Darwin" ]; then echo macos; else echo linux; fi)
ZIG_DIR=$(PROJ_DIR)zig-$(ZIG_ARCH)-$(ZIG_OS)-$(ZIG_VERSION)
ZIG=$(shell which zig 2>/dev/null || echo $(ZIG_DIR)/zig)

configure: install_zig venv platform extension_version
release: build_extension_library_release build_extension_with_metadata_release
test_release: test_extension_release

install_zig:
	@test -x $(ZIG) || ( \
		echo "Installing Zig $(ZIG_VERSION)..." && \
		curl -fL https://ziglang.org/download/$(ZIG_VERSION)/zig-$(ZIG_ARCH)-$(ZIG_OS)-$(ZIG_VERSION).tar.xz \
			| tar -xJ -C $(PROJ_DIR) \
	)

build_extension_library_release: check_configure
	$(ZIG) build -Doptimize=ReleaseFast
	mkdir -p $(EXTENSION_BUILD_PATH)/release/extension/$(EXTENSION_NAME)
	cp zig-out/lib/$(EXTENSION_LIB_FILENAME) $(EXTENSION_BUILD_PATH)/release/$(EXTENSION_LIB_FILENAME)
