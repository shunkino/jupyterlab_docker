FROM jupyter/datascience-notebook

# Schema: https://github.com/projectatomic/ContainerApplicationGenericLabels
LABEL name="Jupyterlab IP analisys environment" \
      summary="The container of jupyterlab with some extra packages" 

USER root

# Install additional packages
RUN apt install default-jre

# Install dependencies
COPY ./jupyter_docker.yml ~/environment.yml  
RUN conda env create -f environment.yml

# Copy jupyter config file
COPY ./jupyter_notebook_config.py /home/jovyan/.jupyter

