#!/usr/bin/env bash

set -e

base=$(dirname "$0")
cd "$base"
. javaenv
cd ..

JAVA_HOME="$JAVA11_HOME" mvn clean compile

echo "*** COMPILED USING JDK 11 ***"
echo "Class version:"
javap -v -cp target/classes javabump.App | grep version
