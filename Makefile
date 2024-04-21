APP = restapi

test:
	@pytest -v --disable-warnings
	@flake8  . --exclude .venv

compose:
	@docker-compose build
	@docker-compose up