# DuckDB community extensions CI runs:
# - "make configure_ci" to set up the environment (it calls "configure" below)
# - "make release" to build the extension library (build.zig appends metadata)
# - "make test_release" to run sqllogictest tests from test/sql/

PROJ_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

EXTENSION_NAME=maxmind

include extension-ci-tools/makefiles/c_api_extensions/base.Makefile

ZIG_VERSION=0.16.0

ZIG_TARGET=
ifeq ($(DUCKDB_PLATFORM),linux_amd64)
	ZIG_TARGET=-Dtarget=x86_64-linux-gnu
endif
ifeq ($(DUCKDB_PLATFORM),linux_arm64)
	ZIG_TARGET=-Dtarget=aarch64-linux-gnu
endif
ifeq ($(DUCKDB_PLATFORM),linux_amd64_musl)
	ZIG_TARGET=-Dtarget=x86_64-linux-musl
endif
ifeq ($(DUCKDB_PLATFORM),linux_arm64_musl)
	ZIG_TARGET=-Dtarget=aarch64-linux-musl
endif
ifeq ($(DUCKDB_PLATFORM),osx_amd64)
	ZIG_TARGET=-Dtarget=x86_64-macos
endif
ifeq ($(DUCKDB_PLATFORM),osx_arm64)
	ZIG_TARGET=-Dtarget=aarch64-macos
endif
ifeq ($(DUCKDB_PLATFORM),windows_amd64)
	ZIG_TARGET=-Dtarget=x86_64-windows
endif
ifeq ($(DUCKDB_PLATFORM),windows_arm64)
	ZIG_TARGET=-Dtarget=aarch64-windows
endif

ifeq ($(OS),Windows_NT)
    # The zig 0.16 aarch64-windows binary is broken,
    # see https://codeberg.org/ziglang/zig/issues/31865.
    # x86_64 zig works on ARM via Windows emulation.
    ZIG_ARCH=x86_64
    ZIG_OS=windows
else
    ZIG_ARCH=$(shell uname -m | sed 's/arm64/aarch64/')
    ZIG_OS=$(shell if [ "$$(uname -s)" = "Darwin" ]; then echo macos; else echo linux; fi)
endif

ZIG_DIR=$(PROJ_DIR)zig-$(ZIG_ARCH)-$(ZIG_OS)-$(ZIG_VERSION)
ZIG=$(shell which zig 2>/dev/null || echo $(ZIG_DIR)/zig)

configure: install_zig venv platform
release: build_extension_library_release
test_release: test_extension_release

install_zig:
ifeq ($(OS),Windows_NT)
	@test -x $(ZIG) || ( \
		echo "Installing Zig $(ZIG_VERSION)..." && \
		curl -fL -o /tmp/zig.zip https://ziglang.org/download/$(ZIG_VERSION)/zig-$(ZIG_ARCH)-$(ZIG_OS)-$(ZIG_VERSION).zip && \
		unzip -q /tmp/zig.zip -d $(PROJ_DIR) && \
		rm /tmp/zig.zip \
	)
else
	@test -x $(ZIG) || ( \
		echo "Installing Zig $(ZIG_VERSION)..." && \
		curl -fL https://ziglang.org/download/$(ZIG_VERSION)/zig-$(ZIG_ARCH)-$(ZIG_OS)-$(ZIG_VERSION).tar.xz \
			| tar -xJ -C $(PROJ_DIR) \
	)
endif

build_extension_library_release: check_configure
	$(ZIG) build -Doptimize=ReleaseFast -Dcpu=baseline $(ZIG_TARGET)
	mkdir -p $(EXTENSION_BUILD_PATH)/release/extension/$(EXTENSION_NAME)
	cp zig-out/lib/$(EXTENSION_FILENAME) $(EXTENSION_BUILD_PATH)/release/$(EXTENSION_FILENAME)
	cp zig-out/lib/$(EXTENSION_FILENAME) $(EXTENSION_BUILD_PATH)/release/extension/$(EXTENSION_NAME)/$(EXTENSION_FILENAME)
