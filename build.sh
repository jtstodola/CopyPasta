#!/usr/bin/env bash
chmod +x build.sh

# Install npm packages and minify css
make build
grunt

# Image compression
cd zopfli
make zopflipng
mkdir -p ../dist/images
images_dir=../src/assets/images

for image_file in $images_dir/*
do
	if [ ! -e ../dist/images/$(basename $image_file) ]; then
		./zopflipng ../src/assets/images/$(basename $image_file) ../dist/images/$(basename $image_file)
	fi
done
cd ../

# Create public build directory for deployment
mkdir -p public
rsync -a src dist public

echo 'Build complete. Ready for deployment!'
