FROM python:3.10.6
WORKDIR /home/Html-project
RUN echo "BEFORE COPY TO DOCKER $(pwd)"
RUN echo "BEFORE COPY TO DOCKER $(ls -lsa)"
COPY . .
RUN echo "AFTER COPY T0 DOCKER $(ls -lsa)"
RUN pip install -r requirments.txt
EXPOSE 8000
CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]
