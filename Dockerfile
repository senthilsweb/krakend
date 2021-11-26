
#
# First stage: 
# Building a backend.
#

FROM alpine

# Move to a working directory (/build).
RUN mkdir -p /app
WORKDIR /app
COPY krakend ./
COPY krakend.json ./
RUN chmod 755 /app

EXPOSE 3000

# Command to run when starting the container.
#CMD ["krakend", "run", "-c", "/app/krakend.json", "-d"]
ENTRYPOINT ["tail", "-f", "/dev/null"]