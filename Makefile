VERSION := $(shell node -p "require('./package.json').version")

build:
	npm run release:build

appstore: build
	@echo Building $(VERSION)
	@tar zcf archives/nextcloud_piwik-$(VERSION).tar.gz  --transform='s,^build,piwik,' build/
	@echo "Archive created:"
	@ls -l archives/nextcloud_piwik-$(VERSION).tar.gz
