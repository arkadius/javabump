#!/usr/bin/env bash

set -e

base=$(dirname "$0")
cd "$base"
. javaenv
cd ..

"$JAVA11_HOME"/bin/java -cp target/classes javabump.App

echo "*** RAN ON JAVA 11 ***"
