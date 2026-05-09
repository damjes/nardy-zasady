#!/bin/sh

git describe --tags --always --dirty | sed 's/^v\.//' | tr -d '\n'