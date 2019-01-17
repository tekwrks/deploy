.PHONY: run
run:
	ansible-playbook -i production site.yml

.PHONY: retry
retry:
	ansible-playbook -i production site.yml \
		--limit @site.retry
