#!/usr/bin/env bash
set -e

awk '{print "\x27",$0,"\x27"}' < $1 | tr '\n' ',' | tr -d "[:space:]"
