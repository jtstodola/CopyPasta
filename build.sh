#!/usr/bin/env bash
chmod +x build.sh

# Install npm packages and minify css
make build
make minify-css 

# Create public build directory for deployment
mkdir -p public
rsync -a src node_modules public

echo 'Build complete. Ready for deployment!'
