#!/bin/bash

# Commodity Dashboard Deployment Script
# This script deploys the dashboard to GitHub Pages

echo "🚀 Deploying Commodity Dashboard to GitHub Pages..."

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found. Please run this script from the commodity-dashboard directory."
    exit 1
fi

# Add all changes
echo "📁 Adding changes to git..."
git add .

# Commit changes
echo "💾 Committing changes..."
git commit -m "Update dashboard - $(date '+%Y-%m-%d %H:%M:%S')"

# Push to GitHub
echo "🌐 Pushing to GitHub..."
git push origin main

echo "✅ Deployment complete!"
echo "🌍 Your dashboard is available at: https://tappanpatel-ops.github.io/Indirect-Commodity-Dash/"
echo ""
echo "📝 Note: It may take a few minutes for changes to appear on GitHub Pages."
