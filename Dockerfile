FROM jupyter/datascience-notebook:2023-08-25

# Build tools and project directory and install pip requirements
WORKDIR /home/project
COPY project/requirements.txt .
RUN pip install -q --upgrade pip
RUN pip install -q -r requirements.txt

EXPOSE 8888

# Copy files
COPY project /home/project