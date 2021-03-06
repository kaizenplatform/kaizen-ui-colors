#!/bin/bash

set -e
tools_dir="$(cd "$(dirname "${BASH_SOURCE:-${(%):-%N}}")"; pwd)"
styles_dir="${tools_dir}/../preview/styles"
sass --style compact --sourcemap=none -r ${tools_dir}/sass-utilities.rb ${styles_dir}/style.scss ${styles_dir}/style.css
