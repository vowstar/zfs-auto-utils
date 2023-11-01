PREFIX := /usr/local

all:

install:
	install -d $(DESTDIR)/etc/cron.d
	install -m 0644 etc/zfsutils-linux $(DESTDIR)/etc/cron.d/zfsutils-linux
	install -d $(DESTDIR)$(PREFIX)/libexec/zfs
	install src/scrub $(DESTDIR)$(PREFIX)/libexec/zfs/scrub
	install src/trim $(DESTDIR)$(PREFIX)/libexec/zfs/trim

uninstall:
	rm $(DESTDIR)/etc/cron.d/zfsutils-linux
	rm $(DESTDIR)$(PREFIX)/libexec/zfs/scrub
	rm $(DESTDIR)$(PREFIX)/libexec/zfs/trim
