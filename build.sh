#!/bin/bash
set -o errexit

# Install Python dependencies
pip install --upgrade pip
pip install -r requirements.txt

# Change to the Django project directory
cd odin_backend

# Collect static files
python manage.py collectstatic --no-input

# Apply migrations
python manage.py migrate