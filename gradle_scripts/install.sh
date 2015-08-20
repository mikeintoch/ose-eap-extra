#!/bin/sh

mv /tmp/gradle_scripts/gradle /usr/bin
chmod 755 /usr/bin/gradle

curl https://downloads.gradle.org/distributions/gradle-2.6-bin.zip > /tmp/g2.zip
unzip /tmp/g2.zip -d /tmp
mv /tmp/gradle-2.6 /usr/share/gradle
rm /tmp/g2.zip
