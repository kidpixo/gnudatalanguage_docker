FROM python:3.6.5-slim-stretch
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -yq upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq gnudatalanguage 
