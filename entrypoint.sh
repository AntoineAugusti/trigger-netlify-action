#!/bin/sh -l

curl -X POST -d {} https://api.netlify.com/build_hooks/$INPUT_NETLIFYHOOKKEY
