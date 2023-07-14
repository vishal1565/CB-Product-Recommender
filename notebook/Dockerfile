FROM tensorflow/tensorflow
#FROM gcr.io/tensorflow/tensorflow:latest
###
### install more system packages, e.g.
###
RUN apt-get update
RUN apt-get install -y 
###  gcc
###
### install more python libs, e.g.
###
RUN pip install scikit-learn
###
### this copies in files from current directory to /notebooks
### to the running container, so that you can access them
### container
###
RUN rm -rf /notebooks/*
ADD *.ipynb /notebooks/
ADD *.csv /notebooks/

RUN ls -al /notebooks/
RUN ls -al /
###
### start up the server
###
WORKDIR /notebooks
CMD ["/run_jupyter.sh"]
