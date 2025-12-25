---
title: Drug Classification
emoji: 💊
colorFrom: blue
colorTo: green
sdk: gradio
sdk_version: "4.44.0"
app_file: drug_app.py
pinned: false
---

# Drug Classification 💊

This application predicts the appropriate drug based on patient medical features using a trained machine learning model.

## 🚀 Features
- Age
- Sex
- Blood Pressure
- Cholesterol
- Sodium-to-Potassium ratio

## 🧠 Model
- Trained using scikit-learn
- Serialized using `skops`
- Deployed automatically via GitHub Actions (CI/CD)

## 🛠 Tech Stack
- Python
- Gradio
- scikit-learn
- Hugging Face Spaces

## 📦 CI/CD
This project demonstrates **end-to-end MLOps**:
- Continuous Integration for training & evaluation
- Continuous Deployment to Hugging Face Spaces
