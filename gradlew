#!/bin/sh
# Gradle wrapper launcher
set -e
GRADLE_USER_HOME="${GRADLE_USER_HOME:-$HOME/.gradle}"
WRAPPER_JAR="$GRADLE_USER_HOME/wrapper/dists/gradle-wrapper.jar"
exec java -jar "$WRAPPER_JAR" "$@" 2>/dev/null || \
  curl -s "https://services.gradle.org/distributions/gradle-8.6-bin.zip" -o /tmp/gradle.zip && \
  unzip -qo /tmp/gradle.zip -d /tmp/ && \
  /tmp/gradle-8.6/bin/gradle "$@"
