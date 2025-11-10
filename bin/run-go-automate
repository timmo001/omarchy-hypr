#!/bin/bash
# Wrapper script to check if go-automate is installed before running commands

if ! command -v go-automate &>/dev/null; then
    notify-send -u normal "go-automate not found" "Please install go-automate to use this feature" -i dialog-warning
    exit 1
fi

# Run the go-automate command with all arguments passed to this script
exec go-automate "$@"
