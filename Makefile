SHELL:=sh

run:
	docker build . -t gcp-cf
	docker run -it --rm \
		-v node_modules:/app/node_modules \
		-v $(PWD):/app \
		-p 8080:8080 \
		gcp-cf