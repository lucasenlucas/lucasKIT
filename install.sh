#!/bin/bash

echo "🔧 Lucas Kit Payload AI installeren..."

# Check Python3
if ! command -v python3 &> /dev/null
then
    echo "❌ Python3 is niet geïnstalleerd! Installeer Python3 en probeer opnieuw."
    exit 1
fi

# Install dependencies
echo "📦 Vereisten installeren..."
pip3 install google-generativeai

# Maak installatiemap
echo "📂 Bestanden kopiëren naar /usr/share/lucaskit/..."
sudo mkdir -p /usr/share/lucaskit
sudo cp lucas_kit_ai.py /usr/share/lucaskit/

# Maak het lucaskit commando beschikbaar
echo "⚡ lucaskit commando installeren..."
sudo cp lucaskit /usr/local/bin/
sudo chmod +x /usr/local/bin/lucaskit

echo "✅ Installatie compleet!"
echo "ℹ️ Typ 'lucaskit' in de terminal om te starten."
