.PHONY: assets
assets:
	yarn

generate-pages:
	ruby scripts/generate-pages.rb

submodule-update:
	git submodule foreach git pull origin master

setup: generate-pages submodule-update

serve: setup
	hugo server \
		--buildDrafts \
		--buildFuture \
		--disableFastRender

production-build: setup
	hugo --verbose --verboseLog

preview-build: setup
	hugo \
		--baseURL $(DEPLOY_PRIME_URL) \
		--buildDrafts \
		--buildFuture \
		--verbose \
		--verboseLog
