FROM centos:7
COPY *.tar.gz startup.sh /
RUN yum install -y iputils iproute net-tools hostname vi tcpdump epel-release wget \
  && yum install -y jq \
  && wget https://download.java.net/java/GA/jdk13/5b8a42f3905b406298b72d750b6919f6/33/GPL/openjdk-13_linux-x64_bin.tar.gz \
  && tar -xvf openjdk-13_linux-x64_bin.tar.gz \
  && export JAVA_HOME=/opt/jdk-13/ \
  && export PATH=$PATH:/opt/jdk-13/bin \
  && rm -f openjdk-13_linux-x64_bin.tar.gz \
  && mv jdk-13 /opt/ \
  && yum clean all \
  && mkdir -p /gt/couchconnect \
  && mv *.tar.gz /gt/couchconnect/ \
  && mv startup.sh /usr/local/bin/ \
  && chmod +x /usr/local/bin/startup.sh \
  && rm -rf *.tar.gz /var/cache/yum
WORKDIR /gt/couchconnect
ENTRYPOINT ["/bin/sh", "startup.sh"]
