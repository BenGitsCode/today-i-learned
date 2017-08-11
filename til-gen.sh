#!/usr/bin/env bash


TIL=my-new-til.md

if [ $# -gt 0 ]; then
  TIL=$1
fi

cat til-template.md > "${TIL}"


# TODO make it add markdown file extension by default so that the command syntax could be `til-gen.sh <filename>` and it will append .md no matter what. Currently you have to sepcify `til-gen.sh <filename.md>`
