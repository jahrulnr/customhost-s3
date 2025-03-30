build:
	docker build -f docker/Dockerfile . -t customhost-s3:dev

check: build
	docker run --rm customhost-s3:dev nginx -t

cat: build
	docker run --rm customhost-s3:dev tail -f /dev/null
	# docker run --rm customhost-s3:dev cat /etc/environment

run: build
	docker compose -f docker/compose.yml up -d