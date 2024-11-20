# Use latest miniconda base image
FROM continuumio/miniconda3:latest

# Set working directory
WORKDIR /app

# Copy environment files
COPY environment.yml .

# Create conda environment
RUN conda env create -f environment.yml

# Make RUN commands use the conda environment
SHELL ["conda", "run", "-n", "crewai-flows", "/bin/bash", "-c"]

# Copy project files
COPY . .

# Set default command to bash so we can interact with the container
CMD ["/bin/bash"] 