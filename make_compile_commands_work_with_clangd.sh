#!/usr/bin/env bash
set -e

# This script is a workaround for make compile_commands.json work with clangd, which is create by bear make
sed -e '/-mabi=lp64/d' compile_commands.json  -i
sed -e '/-fconserve-stack/d' compile_commands.json  -i
sed -e '/-femit-struct-debug-baseonly/d' compile_commands.json  -i
