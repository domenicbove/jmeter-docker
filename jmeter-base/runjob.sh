#!/bin/bash

$JMETER_HOME/bin/jmeter -n -t CSVSample.jmx -l Test2.jtl
cat Test2.jtl
