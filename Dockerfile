FROM registry.access.redhat.com/jboss-eap-6/eap-openshift

USER root

ADD gradle /tmp/gradle_scripts

RUN [ "bash", "-x" "/tmp/gradle_scripts/install.sh" ]

RUN touch /opt/eap/I_AM_HERE_v01
