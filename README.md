ImageStream update example
========

# Prepare the OpenShift Environment

Load the stream (based on 3.0.1)

    oc create -f eap-basic-extra-stream.json -n openshift
  
Load the template (based on 3.0.1)
   
    oc create -f eap-basic-extra-template.json -n openshift
   
# Create your application

Add to project -> Show All Templates -> eap6-basic-extra-sti -> Edit parameters

    EAP_RELEASE: latest
    GIT_URI: https://github.com/kenthua/kitchensink-gradle
    GIT_REF: master
    GIT_CONTEXT_DIR: <blank>

# Update Dockerfile source

i.e. change the touch I_AM_HERE_v0X

    git commit -a -m 'vX'
    git push origin master

# Docker build update (kenthua/ose-eap-builder)

When the build is completed

    oc import-image jboss-eap6-extra-openshift -n openshift

Start a new manual build 
    
    oc start-build eap-app
    