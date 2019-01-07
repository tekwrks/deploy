projectID=tekwrks
name=quackup
repo=gcr.io/${projectID}

.PHONY: up
up:
	REPO=${repo} \
	docker stack deploy \
		-c docker-compose.yml \
		--with-registry-auth \
		${name}

.PHONY: down
down:
	docker stack rm \
		${name}

