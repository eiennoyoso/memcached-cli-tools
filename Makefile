link:
	ln -s $(CURDIR)/memc* ~/bin
	ln -s $(CURDIR)/phpsession ~/bin

install:
	cp $(CURDIR)/memc* ~/bin
	cp $(CURDIR)/phpsession ~/bin

uninstall:
	rm ~/bin/memc*
	rm ~/bin/phpsession