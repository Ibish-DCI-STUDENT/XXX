#!/bin/bash

# Prompt for the new username
read -p "Enter the new username: " username

# Create a new user
sudo useradd -m $username

# Prompt for the new group name
read -p "Enter the new group name: " groupname

# Create a new group
sudo groupadd $groupname

# Add the user to the new group
sudo usermod -aG $groupname $username

echo "New user '$username' and group '$groupname' created successfully."
