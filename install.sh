#!/bin/bash

# Step 1: Create virtual environment
python3 -m venv .venv

# Step 2: Activate virtual environment
source .venv/bin/activate

# Step 3: Install Python dependencies
pip3 install -r requirements.txt

# Step 4: Run CPLEX installer with predefined response file
sudo chmod 777 ./environment/solver/cplex_studio2211.linux_x86_64.bin
sudo chmod 644 ./environment/solver/responses.txt  # Fixed filename

sudo bash ./environment/solver/cplex_studio2211.linux_x86_64.bin < ./environment/solver/responses.txt
