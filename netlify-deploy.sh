#!/bin/bash
# Netlify deployment script

# Check if netlify CLI is available
if command -v netlify &> /dev/null; then
    echo "Using netlify CLI"
    netlify deploy --prod --dir=. --site=058792af-05b2-4dd8-9cb2-ae42e8c2b374
elif command -v npx &> /dev/null; then
    echo "Using npx netlify"
    npx netlify deploy --prod --dir=. --site=058792af-05b2-4dd8-9cb2-ae42e8c2b374
else
    echo "Netlify CLI not found"
    exit 1
fi
