install:
	pip install --upgrade pip && \
	pip install -r requirements.txt

format:
	black *.py

train:
	python train.py

eval:
	echo "## Model Metrics" > report.md
	cat ./Results/metrics.txt >> report.md
	echo "" >> report.md
	echo "## Confusion Matrix Plot" >> report.md
	echo "![Confusion Matrix](./Results/model_results.png)" >> report.md
	cml comment create report.md

update-branch:
	git config --global user.name $(USER_NAME)
	git config --global user.email $(USER_EMAIL)
	git commit -am "Update with new results"
	git push --force origin HEAD:update

prepare-app:
	cp App/drug_app.py app.py

push-hub: prepare-app
	pip install -U huggingface_hub
	python -c "from huggingface_hub import HfApi; api=HfApi(); api.upload_folder(folder_path='.', repo_id='pradeepsomannavar/Drug-Classification', repo_type='space', commit_message='Deploy app')"

deploy: push-hub

all: install format train eval update-branch deploy
