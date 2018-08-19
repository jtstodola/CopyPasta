#!/usr/bin/env bash
chmod +x build.sh

# Install npm packages and minify css
make build
grunt

# Create public build directory for deployment
mkdir -p public
rsync -a src dist public

echo 'Build complete. Ready for deployment!'
