PREFIX ?= /usr

all:
	@echo Run \'make install\' to install tbsm.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p tbsm $(DESTDIR)$(PREFIX)/bin/tbsm
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/tbsm

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/tbsm
