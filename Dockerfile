FROM registry.access.redhat.com/jboss-eap-6/eap-openshift

USER root

ADD gradle/gradle /usr/bin/gradle

RUN chmod 755 /usr/bin/gradle
RUN curl https://downloads.gradle.org/distributions/gradle-2.6-bin.zip > /tmp/g2.zip && unzip /tmp/g2.zip -d /tmp && mv /tmp/gradle-2.6 /usr/bin/gradle && rm /tmp/g2.zip
RUN touch /opt/eap/I_AM_HERE_v01
