# Example found: https://gist.github.com/rgrove/1116056
# Patterns matching CSS files that should be minified. Files with a -min.css
# suffix will be ignored.
CSS_FILES = $(filter-out %-min.css,$(wildcard \
	src/assets/css/*.css \
))

# Command to run to execute the YUI Compressor.
YUI_COMPRESSOR = java -jar node_modules/yuicompressor/build/yuicompressor-2.4.8.jar

# Flags to pass to the YUI Compressor for both CSS and JS.
YUI_COMPRESSOR_FLAGS = --charset utf-8 --verbose

CSS_MINIFIED = $(CSS_FILES:.css=-min.css)

# target: minify-css - Minifies CSS.
minify-css: $(CSS_FILES) $(CSS_MINIFIED)

%-min.css: %.css
	@echo '==> Minifying $<'
	$(YUI_COMPRESSOR) $(YUI_COMPRESSOR_FLAGS) --type css $< >$@
	@echo

# target: clean - Removes minified CSS file.
clean:
	rm -f $(CSS_MINIFIED)

# building CopyPasta

# target: build - Builds website and preps for deployment
build:
	npm install
    

# target: help - Displays help.
help:
	@egrep "^# target:" Makefile
