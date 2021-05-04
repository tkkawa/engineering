#!/bin/sh
function print_modified_file {
    find . -type f -mmin -1
}

print_modified_file
