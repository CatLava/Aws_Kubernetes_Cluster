# Dockerfile for running app

FROM python:3.7.3-stretch

# Need to create a working directory to copy all files
WORKDIR /app

# Copy files into working dir
COPY catalog_database.py /app	
COPY index.html /app		
COPY templates /app/templates
COPY application.py /app
COPY client_secrets.json /app	
COPY pop_items.py /app		
COPY static /app/static
COPY requirements.txt /app
COPY run_app.sh /app

# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r "$PWD/requirements.txt"

# Expose ports, for this case it is 5000
EXPOSE 80
EXPOSE 5000

# Next run intended Python files
CMD ["/bin/bash", "run_app.sh"]

