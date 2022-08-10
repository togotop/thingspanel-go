# syntax=docker/dockerfile:1
FROM golang:1.17-alpine
WORKDIR /app
RUN pwd
ENV TP_PG_IP=127.0.0.1
ENV TP_PG_PORT=9999
ENV TP_MQTT_HOST=127.0.0.1:30526
ENV TP_REDIS_HOST=127.0.0.1:6379
COPY . .
EXPOSE 9999
EXPOSE 9998
RUN chmod +x ThingsPanel-Go
CMD [ "/app/ThingsPanel-Go" ]