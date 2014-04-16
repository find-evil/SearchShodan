#!/bin/bash

_file="${1:-/dev/null}"

while IFS= read -r arg
do
	python SearchShodan.py --search="$arg OpenSSL 1.0.1"
done < "args.txt"
