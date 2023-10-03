install:
	pip install -r requirements.txt

docker-build:
	docker build -t srubar/health-outcome-of-horses:latest .

docker-run:
	docker run -p 8501:8501 srubar/health-outcome-of-horses:latest

docker-push:
	docker push srubar/health-outcome-of-horses:latest

test:
	python -m pytest -vv test_app.py

format:
	black app.py

lint:
	pylint app.py

all: install format lint test
