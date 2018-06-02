TELEPHONY_COMMON := qti-telephony-common
OUT := out

SOURCE := $(TELEPHONY_COMMON).jar
BYTECODE := $(TELEPHONY_COMMON)
TARGET := $(OUT)/$(TELEPHONY_COMMON).jar

# Build
# ==========

.PHONY: build
build: $(TARGET)

$(TARGET): $(BYTECODE)
	mkdir -p $(dir $@)
	apktool build \
		--output $@ \
		$^

# Decode
# ==========

.PHONY: decode
decode: $(BYTECODE)

$(BYTECODE): $(SOURCE)
	rm -rf $@
	apktool decode \
		--no-debug-info \
		--output $@ \
		$^

# Clean
# ==========

.PHONY: clean
clean:
	rm -rf $(OUT)
	rm -rf $(BYTECODE)/build
