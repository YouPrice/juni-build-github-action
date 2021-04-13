  
FROM python:3.7-alpine

RUN apk add docker
RUN pip install juniper

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
