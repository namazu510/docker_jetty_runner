#!/bin/bash

JAVA_OPTS=${JAVA_OPTS:-"-Xmx128m"}
exec java $JAVA_OPTS -jar /jetty-runner.jar $@
