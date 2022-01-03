#!/bin/bash

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
echo $SCRIPT_DIR;

alias k8="kubectl --kubeconfig $SCRIPT_DIR/admin.conf"
