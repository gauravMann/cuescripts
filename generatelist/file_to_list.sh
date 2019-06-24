#!/usr/bin/env bash
set -e

pbpaste | awk '{print "\x27",$0,"\x27"}' | tr '\n' ',' | tr -d "[:space:]"


