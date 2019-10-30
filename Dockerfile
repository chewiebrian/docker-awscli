FROM debian:10

RUN apt-get -yq update && apt-get -yq install awscli curl && \
   curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "/tmp/session-manager-plugin.deb" &&\
   dpkg -i /tmp/session-manager-plugin.deb &&\
   apt-get -yq purge curl && apt-get autoremove --purge -y && apt-get clean &&\
   rm -Rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["aws"]
