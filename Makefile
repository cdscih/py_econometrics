
.PHONY: build test shell

build:
	docker build -t py_econometrics .

test: build
	docker run -it py_econometrics python test.py

shell:
	docker run -it py_econometrics bash