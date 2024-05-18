#!/bin/bash

# Function for item reading
read_item() {
    read -r item_number

    if [ -f "data/${item_number}.item" ]; then
        cat "data/${item_number}.item"
    else
        echo "ERROR: item not found"
    fi
}

read_item
