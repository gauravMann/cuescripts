#!/usr/bin/env bash
set -e

pbpaste > fl.txt
awk '{print "\x27",$0,"\x27"}' < fl.txt | tr '\n' ',' | tr -d "[:space:]"
rm fl.txt

