.PHONY: activate python 🐍 environment

activate:
	if [ -d "venv" ]; then \
		echo "Python 🐍 environment was activated"; \
		source venv/bin/activate; \
	else \
		 echo "The folder environment doesn't exist"; \
		 pip3 install pipenv; \
		 PIPENV_IGNORE_VIRTUALENVS=1 pipenv shell; \
		 echo "The environment folder was created and the python 🐍 environment was activated"; \
	fi

install:
	PIPENV_IGNORE_VIRTUALENVS=1 pipenv install
	sleep 5

install-requirements:
	pip3 install -r requirements.txt

migration:
	python3 manage.py makemigrations

migrate:
	python3 manage.py migrate