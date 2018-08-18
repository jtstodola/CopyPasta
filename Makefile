# Example found: https://gist.github.com/rgrove/1116056
# Patterns matching CSS files that should be minified. Files with a -min.css
# suffix will be ignored.
CSS_FILES = $(filter-out %-min.css,$(wildcard \
	dist/css/*.css \
))

# Patterns matching JS files that should be minified. Files with a -min.js
# suffix will be ignored.
JS_FILES = $(filter-out %-min.js,$(wildcard \
	dist/js/*.js \
))

CSS_MINIFIED = $(CSS_FILES:.css=.css)
JS_MINIFIED = $(JS_FILES:.js=.js)

# target: minify - Minifies CSS and JS.
minify: minify-css minify-js

# target: minify-css - Minifies CSS.
minify-css: $(CSS_FILES) $(CSS_MINIFIED)

# target: minify-js - Minifies JS.
minify-js: $(JS_FILES) $(JS_MINIFIED)

# target: clean - Removes minified CSS & JS file.
clean:
	rm -f $(CSS_MINIFIED) $(JS_MINIFIED)

#target: remove-dir - Removes public, dist, & node_module directories.
remove-dir:
	rm -rf public dist node_modules

# building CopyPasta

# target: build - Builds website and preps for deployment
build:
	npm install


# target: help - Displays help.
help:
	@egrep "^# target:" Makefile
