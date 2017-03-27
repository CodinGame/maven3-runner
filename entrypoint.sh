#!/bin/bash

MAVEN_OPTS="-XX:+TieredCompilation -XX:TieredStopAtLevel=1" mvn --quiet test -DfailIfNoTests=false -Dtest=$*
