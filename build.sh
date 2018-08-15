#!/use/bin/env bash

make build
make minify-css 
mkdir public
rsync -a src node_modules public
echo 'Build complete. Ready for deployment!'
