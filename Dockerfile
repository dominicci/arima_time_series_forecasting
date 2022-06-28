# FROM jupyter/minimal-notebook 
FROM python:3.8
ADD requirements.txt /
RUN pip install -r /requirements.txt
# ADD arima_model2.ipynb
ADD arima_model2.py /
ENV PYTHONUNBUFFERED=1
CMD [ "python", "./arima_model2.py" ]
# EXPOSE 3000