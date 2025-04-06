#!/bin/bash

# Download the PaperMC JAR file to mapped volume
curl -O https://api.papermc.io/v2/projects/paper/versions/1.21.4/builds/222/downloads/paper-1.21.4-222.jar

# Add the eula file
echo "eula=true" > eula.txt 

# Create plugins directory
mkdir -p plugins
cd plugins

# Download the ViaVersion JAR file to mapped volume
curl -L -O https://hangarcdn.papermc.io/plugins/ViaVersion/ViaVersion/versions/5.3.1/PAPER/ViaVersion-5.3.1.jar

# Download the Geyser-Spigot JAR file if doesn't already exist in mapped volume
if [ ! -e Geyser-Spigot.jar ]; then
    curl -L -o Geyser-Spigot.jar https://download.geysermc.org/v2/projects/geyser/versions/latest/builds/latest/downloads/spigot
fi

cd ..

# Run the JAR file
java -Xmx1024M -Xms1024M -jar paper-1.21.4-222.jar --nogui