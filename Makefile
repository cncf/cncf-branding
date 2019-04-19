generate-pages:
	ruby scripts/generate-pages.rb

load:
	git submodule foreach git pull origin master

setup: generate-pages load

serve: setup
	hugo server \
		--buildDrafts \
		--buildFuture \
		--disableFastRender

production-build: setup
	hugo

preview-build: setup
	hugo \
		--baseURL $(DEPLOY_PRIME_URL) \
		--buildDrafts \
		--buildFuture
