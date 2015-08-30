.PHONY:	install
install:
	sh ./install.sh
	docker-machine create --driver virtualbox default
	docker-machine stop default

.PHONY:	up
up:
	docker-machine start default
	docker-machine env default

.PHONY:	runserver
runserver:
	docker-compose build
	docker-compose up -d
	docker-machine ip default

.PHONY:	stopserver
stopserver:
	docker-compose stop

.PHONY:	down
down:
	docker-machine stop default
