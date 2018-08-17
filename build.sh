#!/usr/bin/env bash
chmod +x build.sh

# Install npm packages and minify css
make build
make minify

# Image compression
cd zopfli
make zopflipng
images_dir=../src/assets/images

for image_file in $images_dir/uncompressed/*
do
	if [ ! -e $images_dir/compressed/$(basename $image_file) ]; then
		./zopflipng ../src/assets/images/uncompressed/$(basename $image_file) ../src/assets/images/compressed/$(basename $image_file)
	fi
done
cd ../

# Create public build directory for deployment
mkdir -p public
rsync -a src node_modules public

echo 'Build complete. Ready for deployment!'
