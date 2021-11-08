PREFIX ?= /usr
MANDIR ?= $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install Bfetch.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p bfetch $(DESTDIR)$(PREFIX)/bin/bfetch
	@cp -p bfetch.1 $(DESTDIR)$(MANDIR)/man1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/bfetch

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/bfetch
	@rm -rf $(DESTDIR)$(MANDIR)/man1/bfetch.1*
