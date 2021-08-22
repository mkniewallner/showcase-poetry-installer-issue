FROM python:3.10.0rc1-slim-bullseye

ENV POETRY_VERSION=1.1.8 \
  POETRY_VIRTUALENVS_CREATE=false \
  PATH=$PATH:/root/.local/bin

RUN apt-get update && apt-get install -y curl

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/b47de09d800b7f2e4ed7088c8657878aa5380714/install-poetry.py \
  | python -

RUN poetry --version
