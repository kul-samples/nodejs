FROM ubuntu:22.04
ARG BRANCH
RUN apt-get update -y && apt-get install -y git libpq-dev nodejs npm
RUN adduser appuser --home /opt/appuser
USER appuser
WORKDIR /opt/appuser
RUN git clone https://github.com/kul-samples/nodejs.git app/ -b ${BRANCH}
WORKDIR /opt/appuser/app
RUN npm install
ENV DB_URL=postgres
ENV DB_USER=postgres
ENV DB_NAME=postgres
ENV DB_PWD=postgres
CMD ["node","app.js"]
