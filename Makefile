PACKAGE          ?= lattedock-thunderbird
VERSION          ?= $(shell git describe --abbrev=0 --tags 2>/dev/null)
XPI              ?= $(PACKAGE)-$(VERSION).xpi

all: $(XPI)

%.xpi:
	@cp -R ./src/ ./build/; \
	cd "build"; \
	sed -i 's/\@VERSION\@/$(VERSION)/g' manifest.json; \
	sed -i 's/\@VERSION\@/$(VERSION)/g' chrome/content/about.xhtml; \
	zip -FS -r "../$@" *; \
	cd ..; \
	mv $(XPI) dist/

clean:
	rm -fr build/
	rm -f	$(XPI)
