#!/bin/bash

# Main script

# Display menu
display_menu() {
    echo "Enter one of the following or press CTRL-D to exit."
    echo "C - create a new item"
    echo "R - read an existing item"
    echo "U - update an existing item"
    echo "D - delete an existing item"
}

# Main logic
while read -r action; do
    case $action in
        [Cc])
            ./create.bash
            ;;
        [Rr])
            ./read.bash
            ;;
        [Uu])
            ./update.bash
            ;;
        [Dd])
            ./delete.bash
            ;;
        *)
            echo "ERROR: invalid option"
            ;;
        esac
        display_menu
    done < a1Input.txt
