# 
# Makefile to assist with script installation.
# Override $PREFIX to describe where scripts should be installed.
# By default, scripts will be installed to $HOME/.local/bin.
# 

ST37_SCRIPTS := st37-dep st37-conf st37-archive
MAKEFLAGS += --silent

ifeq ($(PREFIX),)
	PREFIX := $(HOME)/.local
endif

install:
	for i in $(ST37_SCRIPTS); do \
		echo "installing $(DESTDIR)$(PREFIX)/bin/$$i..."; \
		install -t $(DESTDIR)$(PREFIX)/bin/ -D ./$$i; \
	done

uninstall:
	for i in $(ST37_SCRIPTS); do \
		echo "uninstalling $(DESTDIR)$(PREFIX)/bin/$$i..." ;\
		rm -f $(DESTDIR)$(PREFIX)/bin/$$i; \
	done

