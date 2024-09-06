FROM public.ecr.aws/docker/library/python:3.10-slim
#FROM python:3.10-slim

# RUN pip install --upgrade pip
# Install pip and upgrade it
RUN pip install --upgrade pip \
    # Install Gunicorn and dependencies from requirements.txt
    && pip install gunicorn \
    && pip install -r requirements.txt

WORKDIR /app
COPY . /app

RUN pip install gunicorn
RUN python -m pip install -r requirements.txt

EXPOSE 5000

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
