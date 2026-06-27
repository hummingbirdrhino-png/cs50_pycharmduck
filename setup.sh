#!/bin/bash
# First-time setup: downloads Gradle wrapper
echo "Setting up Gradle wrapper..."
if ! command -v gradle &>/dev/null; then
    echo "Gradle not found. Please install Gradle 8.6+ from https://gradle.org/install/"
    echo "Or use SDKMAN: sdk install gradle 8.6"
    exit 1
fi
gradle wrapper --gradle-version 8.6
echo "Done! Now run: ./gradlew buildPlugin"
