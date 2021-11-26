
#
# First stage: 
# Building a backend.
#

FROM devopsfaith/krakend

COPY krakend.json /etc/krakend/krakend.json
COPY app.config.js /etc/krakend/app.config.js
COPY init.sh /etc/krakend/init.sh

EXPOSE 8080

#ENTRYPOINT ["tail", "-f", "/dev/null"]
# Command to run when starting the container.
# CMD ["krakend", "run", "-c", "/etc/krakend/krakend.json", "-d"]
#ENTRYPOINT ["/etc/krakend/init.sh", "krakend", "run", "-c", "/etc/krakend/krakend.json", "-d"]
ENTRYPOINT ["krakend", "run", "-c", "/etc/krakend/krakend.json", "-d"]
