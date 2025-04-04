#!/bin/bash
set -o errexit

# Install system dependencies for Chrome/Selenium
apt-get update
apt-get install -y wget gnupg2 unzip
apt-get install -y chromium-driver

# Set up Chrome for Selenium
export CHROME_BIN=/usr/bin/chromium
export CHROMEDRIVER_PATH=/usr/bin/chromedriver

# Install Python dependencies
pip install --upgrade pip
pip install -r requirements.txt

# Change to the Django project directory
cd odin_backend

# Collect static files
python manage.py collectstatic --no-input

# Apply migrations
python manage.py migrate