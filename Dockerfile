ARG PYTHON_VERSION=3.8-slim

FROM python:${PYTHON_VERSION}

ARG ENV=development 
ENV \
  PYTHONFAULTHANDLER=1 \
  PYTHONUNBUFFERED=1 \
  PYTHONDONTWRITEBYTECODE=1 \
  PYTHONHASHSEED=random \
  PIP_DISABLE_PIP_VERSION_CHECK=on \
  DEBIAN_FRONTEND=noninteractive

RUN pip install universal-silabs-flasher==0.0.13
RUN pip install bellows==0.34.3