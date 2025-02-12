#!/bin/bash

echo "Steps to Increase Swap Memory"

# Step 1: Check the Current Swap File Size

ls -lh

# Step 2: Check Free Memory and Swap Space

# Step 3: Create the Swap File

sudo fallocate -l 2G /swapfile

sudo ls -lh /swapfile

# Step 4: Configure Permissions for the Swap File

sudo chmod 600 /swapfile

ls -lh /swapfile

# Step 5: Convert the File to Swap

echo "----------------------------------------"

# Step 6: Make the Swap File Persistent 
# For this step check instructions in the Modify_stab.vim file

# Step 7: Notify the System of the New Swap File

sudo swapon /swapfile

# Step 8: Verify the Swap Space

free -h
