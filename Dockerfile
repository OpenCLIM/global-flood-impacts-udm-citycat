FROM continuumio/miniconda3:4.8.2
ENV PYTHONUNBUFFERED 1

RUN mkdir src

WORKDIR src

COPY environment.yml .
RUN conda env update -f environment.yml -n base

COPY run.py .

CMD [ "python", "run.py"]
