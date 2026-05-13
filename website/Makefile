.DEFAULT_GOAL=help

pwdname := $(shell basename `pwd`)

all: html         ## make all the top-level targets the makefile knows about
install:          ## install builds packages to
install-html:     ## install the html documentation
install-dvi:      ## install dvi documentation
install-pdf:      ## install pdf documentation
install-ps:       ## install postscript documentation
uninstall:        ## uninstall the build packages
install-strip:    ## install stripped executables
clean: public	  ## delete all files that are normally created by running 'make all'.
	$(RM) $^
distclean: $(pwdname).bundle $(pwdname).zip $(pwdname).tar.gz $(pwdname).tar.xz  ## like clean but do not clean installdirs and parent dirs
	$(RM) $^
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
dist:             ## create a distribution tar file for this program
	git bundle create $(pwdname).bundle HEAD
	git archive --output=$(pwdname).zip HEAD
	git archive --output=$(pwdname).tar.gz HEAD
	git archive --output=$(pwdname).tar.xz HEAD
check:            ## run self-tests
	quarto check
installcheck:     ## perform installation tests
	quarto preview
installdirs:      ## create the install directors
	mkdir public
configure:        ## configure the build environment
	quarto install tinytex
help:             ## show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	| sort \
	| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m      %s\n", $$1, $$2}'

.PHONY: configure build run help
