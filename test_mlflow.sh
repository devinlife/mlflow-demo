#!/bin/sh
cd examples

# Execute the first mlflow run command
mlflow run sklearn_elasticnet_wine -P alpha=0.2 --env-manager=local
mlflow run sklearn_elasticnet_wine -P alpha=0.3 --env-manager=local
mlflow run sklearn_elasticnet_wine -P alpha=0.4 --env-manager=local
mlflow run sklearn_elasticnet_wine -P alpha=0.5 --env-manager=local
mlflow run sklearn_elasticnet_wine -P alpha=0.6 --env-manager=local

mlflow ui -h 0.0.0.0 -p 5010
