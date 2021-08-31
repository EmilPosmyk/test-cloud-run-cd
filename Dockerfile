FROM python:3.8-bullseye

COPY CloudRunCD CloudRunCD
COPY requirements.txt requirements.txt

# WORKFLOW is in .githubpythonpackage.yml folder to see it in Action tab in github !
#
RUN pip install -U pip
RUN pip install fastapi uvicorn

CMD uvicorn CloudRunCD.api:app --host 0.0.0.0 --port $PORT
