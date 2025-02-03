#! /bin/bash
# shellcheck disable=SC2164
cd /home/ubuntu

# Update the system and install python3, pip3, and python3-venv if not installed
yes | sudo apt update
yes | sudo apt install python3 python3-pip python3-venv

# Clone the project repository
git clone https://github.com/Chethanvr06/python-mysql-db-proj-1-rahul-wagh

# Wait for 20 seconds to ensure everything is set up
sleep 20

# Navigate to the project directory
cd python-mysql-db-proj-1

# Create a virtual environment in the project directory
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Upgrade pip inside the virtual environment
pip install --upgrade pip

# Install required Python dependencies inside the virtual environment
pip install -r requirements.txt

# Wait before running the application
echo 'Waiting for 30 seconds before running the app.py'
sleep 30

# Ensure the app.py runs in the background within the virtual environment
echo 'Starting the Flask application in the background...'
setsid python3 -u app.py &

# Wait for another 30 seconds to ensure the app is up and running
sleep 30
