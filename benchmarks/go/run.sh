#!/bin/bash

cd $(dirname $0)

set -x
exec go test -bench=.
