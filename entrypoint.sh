#!/bin/bash

echo 'Compile and run your code'
MAVEN_OPTS="-XX:+TieredCompilation -XX:TieredStopAtLevel=1" mvn --quiet test -DfailIfNoTests=false -Dtest=$*
