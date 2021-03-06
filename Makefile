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

# target: clean - Removes minified CSS & JS file.
# clean:
# 	rm -f $(CSS_FILES) $(JS_FILES)

#target: remove-dir - Removes public, dist, & node_module directories.
remove-dir:
	rm -rf public node_modules

# building CopyPasta

# target: build - Builds website and preps for deployment
build:
	npm install

# target: help - Displays help.
help:
	@egrep "^# target:" Makefile
