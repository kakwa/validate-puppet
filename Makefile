PREFIX=/usr/local/
EXEC_PREFIX=/usr/
BINDIR=$(EXEC_PREFIX)/bin
VERSION=0.0.1
SYSCONFDIR=/etc/

install:
	mkdir -p $(DESTDIR)/$(BINDIR)/
	cp validate-puppet $(DESTDIR)/$(BINDIR)/
	chmod 755 $(DESTDIR)/$(BINDIR)/validate-puppet

uninstall:
	rm $(DESTDIR)/$(BINDIR)/validate-puppet

tag:
	git tag -a "$(VERSION)" -m "Tag version '$(VERSION)'"
	git push origin "$(VERSION)"
