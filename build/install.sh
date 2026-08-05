#!/usr/bin/env bash
set -e

if [ -n "${PYTHON_VERSION}" ]; then
    # Install Python from deadsnakes PPA
    add-apt-repository ppa:deadsnakes/ppa
    apt install -y --no-install-recommends \
        "python${PYTHON_VERSION}" \
        "python${PYTHON_VERSION}-dev" \
        "python${PYTHON_VERSION}-venv" \
        "python3-tk"

    # Link Python
    rm /usr/bin/python
    ln -s /usr/bin/python${PYTHON_VERSION} /usr/bin/python
    rm /usr/bin/python3
    ln -s /usr/bin/python${PYTHON_VERSION} /usr/bin/python3

    # Install pip
    curl -sS https://bootstrap.pypa.io/get-pip.py | python${PYTHON_VERSION}

    # Upgrade pip
    python3 -m pip install --upgrade --no-cache-dir pip

    # Create symlink for pip3
    rm -f /usr/bin/pip3
    ln -s /usr/local/bin/pip3 /usr/bin/pip3
fi

# Install micromamba (conda replacement)
mkdir -p /opt/micromamba
cd /opt/micromamba
curl -Ls https://micro.mamba.pm/api/micromamba/linux-64/latest | tar -xvj bin/micromamba
ln -s /opt/micromamba/bin/micromamba /usr/local/bin/micromamba
ln -s /opt/micromamba/bin/micromamba /usr/local/bin/conda
micromamba shell init -s bash
micromamba config set root_prefix ~/.local/share/mamba
micromamba config append channels conda-forge
eval "$(micromamba shell hook --shell bash)"
micromamba activate
micromamba create --name facefusion python=3.12

# Clone the git repo of FaceFusion and set version
git clone https://github.com/facefusion/facefusion.git /facefusion
cd /facefusion
git checkout ${FACEFUSION_VERSION}

# Install torch
#eval "$(micromamba shell hook --shell bash)"
micromamba activate facefusion
${TORCH_COMMAND}

# Install the dependencies for FaceFusion
python3 install.py cuda@12
micromamba deactivate
