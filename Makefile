PREFIX ?= /usr

all:
	@echo Run \'make install\' to install startX.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p startX $(DESTDIR)$(PREFIX)/bin/startX
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/startX

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/startX
