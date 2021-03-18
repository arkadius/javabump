#!/usr/bin/env bash

set -e

base=$(dirname "$0")
cd "$base"
. javaenv
cd ..

JAVA_HOME="$JAVA8_HOME" mvn clean compile

echo "*** COMPILED USING JDK 8 ***"
echo "Class version:"
javap -v -cp target/classes javabump.App | grep version
