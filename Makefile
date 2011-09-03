######################################################################
### Generating website with documentation
.PHONY: doc

doc: Documentation.html

# we expect to be in a directory web/
Documentation.html : ../Documentation.md fptools.css
	pandoc --standalone --toc --css=fptools.css \
		--number-sections "$<" > "$@"

clean:
	rm Documentation.html

