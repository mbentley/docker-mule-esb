# Start from an existing Oracle JDK7 image: https://hub.docker.com/r/mbentley/oracle-jdk7
FROM mbentley/oracle-jdk7:latest
MAINTAINER Matt Bentley <mbentley@mbentley.net>

# install mule standalone and cleanup after ourselves
RUN wget https://repository.mulesoft.org/nexus/content/repositories/releases/org/mule/distributions/mule-standalone/3.5.0/mule-standalone-3.5.0.tar.gz -O /tmp/mule-standalone-3.5.0.tar.gz &&\
  cd /opt && tar xvzf /tmp/mule-standalone-3.5.0.tar.gz &&\
  echo "4a94356f7401ac8be30a992a414ca9b9 /tmp/mule-standalone-3.5.0.tar.gz" | md5sum -c &&\
  rm /tmp/mule-standalone-3.5.0.tar.gz &&\
  ln -s /opt/mule-standalone-3.5.0 /opt/mule

# add hello world app
COPY mule-hello.zip /opt/mule/apps/mule-hello.zip

# set the default command to be mule
CMD ["/opt/mule/bin/mule"]
