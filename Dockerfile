
#
# First stage: 
# Building a backend.
#

FROM devopsfaith/krakend

COPY krakend.json /etc/krakend/krakend.json

EXPOSE 8080

# Command to run when starting the container.
#CMD ["krakend", "run", "-c", "/app/krakend.json", "-d"]
ENTRYPOINT ["tail", "-f", "/dev/null"]