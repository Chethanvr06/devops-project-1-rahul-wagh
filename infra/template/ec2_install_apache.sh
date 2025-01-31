#! /bin/bash
# shellcheck disable=SC2164
cd /home/ubuntu

# Update the system and install python3, pip3
yes | sudo apt update
yes | sudo apt install python3 python3-pip

# Clone the project repository
git clone https://github.com/Chethanvr06/python-mysql-db-proj-1-rahul-wagh

# Wait for 20 seconds to ensure everything is set up
sleep 20

# Navigate to the project directory
cd python-mysql-db-proj-1

# Install required Python dependencies
echo 'Installing required Python dependencies...'
pip3 install --upgrade pip  # Ensure pip is up-to-date
pip3 install -r requirements.txt  # Install project dependencies

# Wait before running the application
echo 'Waiting for 30 seconds before running the app.py'
sleep 30

# Ensure the app.py runs in the background
echo 'Starting the Flask application in the background...'
setsid python3 -u app.py &

# Wait for another 30 seconds to ensure the app is up and running
sleep 30
