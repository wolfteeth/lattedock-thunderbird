XPI := lattedock-thunderbird.xpi

SOURCE_FILES := $(shell find ./src/ -type f)

all: $(XPI)

%.xpi: $(SOURCE_FILES)
	@cd "src"; \
	zip -FS -r "../$@" *; \
	cd ..; \
	mv $(XPI) dist/

clean:
	rm -f $(XPI)
