# drist – a simple hosts deployment tool
# See the LICENSE file for copyright and license details.
.POSIX:

BIN    = drist
PREFIX ?= /usr
BINDIR ?= ${PREFIX}/bin
MANDIR ?= ${PREFIX}/share/man

all:

install: 
	@echo installing executable to "${DESTDIR}${PREFIX}/bin"
	@install -D "${BIN}" "${DESTDIR}${BINDIR}/${BIN}"
	@echo installing manual page to ${DESTDIR}${MANDIR}/man1
	@install -D "${BIN}.1" "${DESTDIR}${MANDIR}/man1/${BIN}.1"

uninstall:
	@echo removing executable file from "${DESTDIR}${PREFIX}/bin"
	@rm -f "${DESTDIR}${BINDIR}/${BIN}"
	@echo removing manual page from ${DESTDIR}${MANDIR}/man1
	@rm -f ${DESTDIR}${MANDIR}/man1/${BIN}.1

.PHONY: all install uninstall clean
