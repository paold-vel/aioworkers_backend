FROM python:3.10.6

WORKDIR /aioworkers_backend

COPY poetry.lock pyproject.toml /aioworkers_backend/
RUN apt-get update && \
    pip install --upgrade pip && \
    pip install -U poetry && \
    poetry config --local virtualenvs.create false && \
    poetry install


COPY . /aioworkers_backend/
