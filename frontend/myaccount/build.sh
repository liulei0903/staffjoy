#!/bin/bash
set -e

npm install -g cnpm --registry=https://registry.npm.taobao.org
cnpm run build
