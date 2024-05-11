APP = gleydson-restapi

test:
	@bandit -r . -x '/.venv/','/tests/'
	@black .
	@pytest -v --disable-warnings
	@flake8  . --exclude .venv

compose:
	@docker-compose build
	@docker-compose up

heroku:
	@heroku container:login
	@heroku container:push -a $(APP) web
	@heroku container:release -a $(APP) web