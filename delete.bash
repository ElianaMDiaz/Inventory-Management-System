#!/bin/bash

# Function for item deletion
delete_item() {
    read -r item_number

    if [ -f "data/${item_number}.item" ]; then
        rm "data/${item_number}.item"
        echo "${item_number} was successfully deleted."

        # Log deletion
        echo "DELETED: ${item_number} - $(date)" >> data/queries.log
    else
        echo "ERROR: item not found"
    fi
}

delete_item
