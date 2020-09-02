#!/bin/bash

# there are many string functions (example: toupper(), tolower(), split(), length(), ...)

echo | awk '{ user_name = "kali"; print toupper(user_name) }'