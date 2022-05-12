dc-up:
	docker-compose up --abort-on-container-exit

ci:
	cp ./app/.env.example ./app/.env
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

dc-build-production:
	docker-compose -f docker-compose.yml build app

dc-push-production:
	docker-compose -f docker-compose.yml push app
