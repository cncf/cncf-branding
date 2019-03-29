load:
	git submodule foreach git pull origin master

serve: load
	hugo server \
		--buildDrafts \
		--buildFuture \
		--disableFastRender

production-build: load
	hugo

preview-build: load
	hugo \
		--baseURL $(DEPLOY_PRIME_URL) \
		--buildDrafts \
		--buildFuture
