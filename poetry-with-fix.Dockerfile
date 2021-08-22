FROM python:3.10.0rc1-slim-bullseye

ENV POETRY_VERSION=1.1.8 \
  POETRY_VIRTUALENVS_CREATE=false \
  PATH=$PATH:/root/.local/bin

RUN apt-get update && apt-get install -y curl

RUN curl -sSL https://raw.githubusercontent.com/mkniewallner/poetry/84745973f308eb80013a529279cfdbcb284de013/install-poetry.py \
  | python -

RUN poetry --version
