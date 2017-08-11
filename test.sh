#!/usr/bin/env bash

TIL=my-new-til.md
if [ $# -gt 0 ]; then
  TIL=$1
fi

cat til-template.md > "${TIL}"


