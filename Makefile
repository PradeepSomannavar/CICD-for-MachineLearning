PYTHON = python
PIP = pip

all: install format train eval

install:
	$(PIP) install --upgrade pip
	$(PIP) install -r requirements.txt

format:
	black *.py

train:
	$(PYTHON) train.py

eval:
	echo "## Model Metrics" > report.md
	cat ./Results/metrics.txt >> report.md
	echo "" >> report.md
	echo "## Confusion Matrix Plot" >> report.md
	echo "![Confusion Matrix](./Results/model_results.png)" >> report.md
	cml comment create report.md
