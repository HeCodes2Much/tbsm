PREFIX ?= /usr

all:
	@echo "Run \'make install\' to install tbsm."

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@install -Dm755 tbsm $(DESTDIR)$(PREFIX)/bin/tbsm

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/tbsm
