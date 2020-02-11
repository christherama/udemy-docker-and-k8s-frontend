build:
	docker build -f Dockerfile.dev -t christherama/frontend:dev .

start:
	docker-compose up

test: 
	docker run -it -v /usr/app/node_modules -v $(shell pwd):/usr/app christherama/frontend:dev npm run test
