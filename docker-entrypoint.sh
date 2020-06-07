#!/bin/bash
TARGET=spigot-1.15.2.jar
PATH=/opt/minecraft/spigot-1-15.2
TARGET_PATH=$PATH/$TARGET
java -Xms1024M -Xmx1024M -jar $TARGET_PATH nogui

# java -Xms1024M -Xmx1024M -jar spigot-1.15.2.jar nogui

/bin/bash