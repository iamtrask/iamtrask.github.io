#!/bin/bash

# OMBox Setup — installs dependencies, pulls the model, and starts the bridge

# Install Node.js if missing
if ! command -v node &> /dev/null; then
    echo "Node.js not found. Installing..."
    if command -v brew &> /dev/null; then
        brew install node
    elif command -v apt-get &> /dev/null; then
        curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
        sudo apt-get install -y nodejs
    else
        echo "Please install Node.js from https://nodejs.org"
        exit 1
    fi
fi

# Install Ollama if missing
if ! command -v ollama &> /dev/null; then
    echo "Ollama not found. Installing..."
    if command -v brew &> /dev/null; then
        brew install ollama
    else
        curl -fsSL https://ollama.com/install.sh | sh
    fi
fi

# Pull the model
echo "Pulling gemma4 (swap with e.g. qwen2.5:0.5b if low on memory)..."
ollama pull gemma4

# Start Ollama in the background if not already running
if ! curl -s http://localhost:11434/api/tags &> /dev/null; then
    echo "Starting Ollama..."
    ollama serve &> /dev/null &
    sleep 2
fi

# Start the WhatsApp bridge
echo "Starting WhatsApp bridge — scan the QR code with your phone..."
npx @iamtrask/om-bridge
