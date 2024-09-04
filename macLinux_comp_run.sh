#!/bin/bash

# Compile ArrayUtil.java
javac ./src/ArrayUtil.java -cp ./bin -d ./bin
if [ $? -ne 0 ]; then
    echo "Failed to compile ArrayUtil.java"
    exit 1
fi

# Compile KeyType.java
javac ./src/KeyType.java -cp ./bin -d ./bin
if [ $? -ne 0 ]; then
    echo "Failed to compile KeyType.java"
    exit 1
fi

# Compile MovieDB.java
javac ./src/MovieDB.java -cp ./bin -d ./bin
if [ $? -ne 0 ]; then
    echo "Failed to compile MovieDB.java"
    exit 1
fi

# Compile Table.java
javac ./src/Table.java -cp ./bin -d ./bin
if [ $? -ne 0 ]; then
    echo "Failed to compile Table.java"
    exit 1
fi

# Print success message
echo "Compiled in terminal"

# Run MovieDB
java -cp ./bin MovieDB
