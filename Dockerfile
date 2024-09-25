FROM docker.io/snyk/broker:bitbucket-server
LABEL maintainer="dl-isg-tvm-tools@lowes.com"
ADD entrypoint.sh /home/node/entrypoint.sh
USER root
RUN chmod +x entrypoint.sh
RUN chown node:node entrypoint.sh
USER 1000 
ENTRYPOINT ["/home/node/entrypoint.sh"]
EXPOSE 7341
CMD ["/bin/bash"]
