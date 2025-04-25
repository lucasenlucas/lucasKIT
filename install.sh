#!/bin/bash

echo "🔧 Lucas Kit Payload AI installatie starten..."

# 🔍 Stap 1: Check of hoofdscript bestaat
if [ ! -f "lucas_kit_ai.py" ]; then
    echo "❌ Fout: lucas_kit_ai.py is niet gevonden in deze map."
    echo "📂 Zorg dat je in de juiste map zit (de GitHub repo)."
    exit 1
fi

# 🧠 Stap 2: Vereisten installeren
echo "📦 Python-dependency installeren..."
pip3 install google-generativeai --break-system-packages

# 📂 Stap 3: Verwijder oude versie & kopieer naar /usr/share/lucaskit
echo "📁 Project kopiëren naar /usr/share/lucaskit..."
sudo rm -rf /usr/share/lucaskit
sudo mkdir -p /usr/share/lucaskit
sudo cp lucas_kit_ai.py /usr/share/lucaskit/
sudo cp install.sh /usr/share/lucaskit/

# ⚡ Stap 4: Maak lucaskit command
if [ ! -f "lucaskit" ]; then
    echo "❌ Fout: lucaskit-startscript ontbreekt. Voeg het bestand 'lucaskit' toe."
    exit 1
fi

echo "🔗 lucaskit command installeren naar /usr/local/bin..."
sudo cp lucaskit /usr/local/bin/lucaskit
sudo chmod +x /usr/local/bin/lucaskit

echo "✅ Installatie voltooid!"
echo "👉 Je kunt nu starten met: lucaskit"
echo "🔄 En updaten met: lucaskit update"
