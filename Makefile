APP = gleydson-restapi

test:
	@pytest -v --disable-warnings
	@flake8  . --exclude .venv

compose:
	@docker-compose build
	@docker-compose up

heroku:
	@heroku container:login
	@heroku container:push -a $(APP) web
	@heroku container:release -a $(APP) web