FROM registry.access.redhat.com/jboss-eap-6/eap-openshift

USER root

ADD gradle_scripts /tmp/gradle_scripts

RUN [ "bash", "-x", "/tmp/gradle_scripts/install.sh" ]

USER 185

RUN touch /opt/eap/I_AM_HERE_v01
