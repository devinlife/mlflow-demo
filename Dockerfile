FROM ghcr.io/mlflow/mlflow:v2.2.1

# Install Git
RUN apt-get update && apt-get install -y git

# Clone the mlflow Git repository
RUN git clone https://github.com/mlflow/mlflow.git

# Set the working directory to the mlflow Git repository
WORKDIR /mlflow

RUN git checkout v2.0.1

# Copy the test script to the container
COPY test_mlflow.sh .

# Run the test script
CMD ["sh", "-c", "./test_mlflow.sh"]
