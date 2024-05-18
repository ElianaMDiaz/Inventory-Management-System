#!/bin/bash

# Item creation
create_item() {
    read -r item_number
    read -r simple_name
    read -r item_name
    read -r current_quantity
    read -r max_quantity
    read -r description

    # Check if item exists
    if [ -f "data/${item_number}.item" ]; then
        echo "ERROR: item already exists"
    else
        # Create item
        echo "${simple_name} ${item_name}" > "data/${item_number}.item"
        echo "${current_quantity} ${max_quantity}" >> "data/${item_number}.item"
        echo "${description}" >> "data/${item_number}.item"

        # Log creation
        echo "CREATED: ${simple_name} - $(date)" >> data/queries.log
    fi
}

create_item
