#!/bin/bash

echo "📥 LucasKit wordt geïnstalleerd..."

# Kopieer het script naar /usr/local/bin en maak het uitvoerbaar
sudo cp lucaskit.py /usr/local/bin/lucaskit
sudo chmod +x /usr/local/bin/lucaskit

echo "✅ Installatie voltooid! Je kunt de tool starten met het command: lucaskit"
