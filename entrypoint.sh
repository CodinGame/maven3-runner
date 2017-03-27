#!/bin/bash

echo 'Compile and run your code'
echo 'CG> redirect-streams --pattern "\[ERROR\].*" "maven error"'
MAVEN_OPTS="-XX:+TieredCompilation -XX:TieredStopAtLevel=1" mvn --quiet test -DfailIfNoTests=false -Dtest=$*
