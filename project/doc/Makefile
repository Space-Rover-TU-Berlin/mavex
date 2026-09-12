# All targets that are not files
.PHONY: all configure build open run help

# Only show the output
.SILENT: help

# The default target to run
.DEFAULT_GOAL := help

# Variables
pwdname := $(shell basename `pwd`)

# Try to detect the OS, falling back to 'uname' if $(OS) is empty
ifndef $(OS)
	OS := $(shell uname -s)
endif

DIST := public

help:             ## show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	| sort \
	| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m      %s\n", $$1, $$2}'
dist:             ## create a distribution tar file for this program
	git bundle create $(pwdname).bundle HEAD
	git archive --output=$(pwdname).zip HEAD
	git archive --output=$(pwdname).tar.gz HEAD
	git archive --output=$(pwdname).tar.xz HEAD
distclean: $(pwdname).bundle $(pwdname).zip $(pwdname).tar.gz $(pwdname).tar.xz  ## like clean but do not clean installdirs and parent dirs
	$(RM) $^
all: html         ## make all the top-level targets the makefile knows about
clean: public	  ## delete all files that are normally created by running 'make all'.
	$(RM) -r $^
mostlyclean:      ## like clean but not all the files but not intermediate files
	@echo Nothing Doing
maintainer-clean: ## like distclean but do not delete configure
	@echo Nothing Doing
TAGS:             ## generate TAGS file
	@echo Nothing Doing
info:             ## generate info documentation
	@echo Nothing Doing
dvi:              ## generate dvi documentation
	@echo Nothing Doing
html:    	  ## generate html documentation
	quarto render
ps:               ## generate ps documentation
	@echo Nothing Doing
pdf:              ## generate pdf documentation
	@echo Nothing Doing
check:            ## run self-tests
	quarto check
installcheck:     ## perform installation tests
	quarto preview
installdirs:      ## create the install directors
	mkdir public
configure:        ## configure the build environment
	quarto install tinytex
references:  ## generate the references file
	find -L . -name "*.pdf" | parallel uv run pdf2bib {} >> references.bib
	sed --in-place=.bak -e '/(All intermediate output will be suppressed\. To see additional outuput\, use the command \-v)/d' references.bib
lint: references.bib            ## lint the bibtex file
	uv run btac -i $<
