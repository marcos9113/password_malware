install: 
		pip install --upgrade pip &&\
			pip install -r requirments.txt

test:
		python -m pytest -vv _test_hello.py

format: 
		black *.py

lint:
		pylint --disable=R,C hello.py

all:	install lint test format