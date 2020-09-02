#!/bin/bash

# Stream EDitor:
# $ <command> | sed '<sed_command>'

# subtitute (pattern_1 --> pattern_2):
# $ <command> | sed 's/<pattern_1>/<pattern_2>/'

echo "This is a test" | sed 's/test/another test/'