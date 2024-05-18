#!/bin/bash

# Function for item updating
update_item() {
    read -r item_number

    if [ -f "data/${item_number}.item" ]; then
        read -r simple_name
        read -r item_name
        read -r current_quantity
        read -r max_quantity
        read -r description

        # Update item file
        echo "${simple_name} ${item_name}" > "data/${item_number}.item"
        echo "${current_quantity} ${max_quantity}" >> "data/${item_number}.item"
        echo "${description}" >> "data/${item_number}.item"

        # Log update
        echo "UPDATED: ${simple_name} - $(date)" >> data/queries.log
    else
        echo "ERROR: item not found"
    fi
}

update_item
