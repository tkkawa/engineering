#!/bin/sh
function print_modified_filenames {
    find . -type f -mmin -1
}

print_modified_filenames
