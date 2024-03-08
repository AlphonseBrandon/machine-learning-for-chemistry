# Machine Learning for Chemistry

#### -- Project Status: Active

## Project Intro/Objective
This task is to get familiar with Machine Learning for chemistry data, which is going to be the focus of the internship. The Ersilia Model Hub contains about 150 models, which predict several properties of small molecules (bioactivity against pathogens, ADME properties, toxicity…). We want to make sure those models are accurate and reproducible.

### Collaborators
|Name     |  Github Page   |  LinkedIn Prodfile  |
|---------|-----------------|--------------------|
|Alphonse | [AlphonseBrandon](https://github.com/AlphonseBrandon)| [LinkedIn](www.linkedin.com/in/alphonsebrandon)  |

### Methods Used
* Machine Learning
* Data Visualization
* Predictive Modeling

### Technologies
* Python
* Jupyter
* Pandas
* Numpy
* Scikit-learn
* Matplotlib

## Project Description
We focus on validating the models in three steps:

* T1 Model bias (i.e: models giving very high values or low values): to check that, we only need to run predictions for a list of 1000 diverse molecules in each model and plot the results in a scatter plot.

* T2 Reproducibility: can we reproduce the exact values / a figure / that authors obtained when training the model in the first place? This means we need to read the publication and identify for example a compound identified using that model and check that we obtain the same values.

* T3 Performance: can we check if the model gives accurate results in external datasets? This is more time consuming and will be done by identifying a public dataset that has not been used in model training, and running predictions to build AUROC curves - to simplify reports, we will only focus on AUROC or R2 as metrics now.

## Getting Started

1. Clone this repo (for help see this [tutorial](https://help.github.com/articles/cloning-a-repository/)).
2. Raw Data is being kept [here](data/01_raw) within this repo.
3. Data processing/transformation notebook is being kept [here](notebooks/01_processing/ra-score-prediction-model.ipynb)
4. Run this [setup.sh](setup.sh) bash script in a bash terminal to automatically set up your environment with the necessary packages with the command `bash setup.sh` or manually install the required packages using the `requirements.txt` file.

## Featured Notebooks/Analysis/Deliverables
* [ra-score-prediction-model.ipynb](notebooks/01_processing/ra-score-prediction-model.ipynb)

---
