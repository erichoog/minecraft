#!/bin/bash

# Download the JAR file to the mapped volume
curl -L -O https://github.com/Pugmatt/BedrockConnect/releases/download/1.54.1/BedrockConnect-1.0-SNAPSHOT.jar

# Run the JAR file
java -jar BedrockConnect-1.0-SNAPSHOT.jar nodb=true
