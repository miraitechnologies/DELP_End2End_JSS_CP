#!/bin/bash

# Step 1: Create virtual environment
python3 -m venv .venv

# Step 2: Activate virtual environment
source .venv/bin/activate

# Step 3: Install Python dependencies
pip3 install -r requirements.txt

# Step 5: Download CPLEX installer
wget -O ./enviroment/solver/cplex_studio2211.linux_x86_64.bin "https://onedrive.live.com/download?resid=EXAMPLE_ID&authkey=EXAMPLE_KEY"

# Step 6: Run CPLEX installer with predefined response file
chmod +x ./environment/solver/cplex_studio2211.linux_x86_64.bin
./environment/solver/cplex_studio2211.linux_x86_64.bin < ./environment/solver/responses.txt
