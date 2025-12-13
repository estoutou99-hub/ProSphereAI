sudo apt update
sudo apt install coreutils nano bash build-essential -y
sudo apt update
sudo apt install coreutils nano bash build-essential -y
sudo apt update
sudo apt install coreutils nano bash build-essential -y
#!/bin/bash

echo "=============================="
echo " 🚀 Building Android APK... "
echo "=============================="

# Stop en cas d’erreur
set -e

# 1. Installer les dépendances du projet
echo "📦 Installing dependencies..."
npm install

# 2. Vérifier EAS CLI
if ! command -v eas >/dev/null 2>&1; then
  echo "⚙️ Installing EAS CLI..."
  npm install -g eas-cli
fi

# 3. Lancer le build Android
echo "📱 Starting EAS Build..."
eas build --platform android --profile production

echo "=============================="
echo " ✅ Build terminé ! "
echo "=============================="
