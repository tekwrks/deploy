.PHONY: run
run:
	ansible-playbook -i production all.yml

.PHONY: retry
retry:
	ansible-playbook -i production all.yml \
		--limit @site.retry
