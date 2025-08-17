FROM python:3.6-slim
LABEL maintainer="datascientest"
WORKDIR /opt
COPY . /opt
RUN pip install flask==1.1.2
EXPOSE 8080
ENV PGADMIN_URL="https://www.pgadmin.org/"
ENV ODOO_URL="https://odoov15.odoo.com/"
ENTRYPOINT ["python"]
CMD ["/opt/app.py"]

# This Dockerfile sets up a Python environment with Flask installed,
# copies the application code into the container, exposes port 8080,
# and defines the entry point to run the Flask application. 