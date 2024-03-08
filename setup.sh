#!/bin/bash

# Set environment variables
export MINICONDA_INSTALLER_SCRIPT=Miniconda3-py37_4.12.0-Linux-x86_64.sh
export MINICONDA_PREFIX=/usr/local
export PYTHONPATH="$PYTHONPATH:/usr/local/lib/python3.7/site-packages"
export PIP_ROOT_USER_ACTION=ignore

# Download and install Miniconda
wget https://repo.anaconda.com/miniconda/$MINICONDA_INSTALLER_SCRIPT
chmod +x $MINICONDA_INSTALLER_SCRIPT
./$MINICONDA_INSTALLER_SCRIPT -b -f -p $MINICONDA_PREFIX

# Install packages
python -m pip install git+https://github.com/ersilia-os/ersilia.git
python -m pip install requests --upgrade

# Install packages from requirements.txt
if [ -f requirements.txt ]; then
    python -m pip install -r requirements.txt
fi

# Append path to sys.path
python -c "import sys; sys.path.append('/usr/local/lib/python3.7/site-packages')"