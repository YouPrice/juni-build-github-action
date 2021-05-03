  
FROM python:3.7-slim

RUN apt-get update && \
    apt-get install --no-install-recommends -y docker watch
RUN pip install juniper

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
