VERSION = 0.0.2
ARCHIVE = eselect-vdr-$(VERSION)
TMPDIR = /tmp

all:
	@echo "Use make dist"

dist: clean
	@-rm -rf $(TMPDIR)/$(ARCHIVE)
	@mkdir $(TMPDIR)/$(ARCHIVE)
	@cp -a * $(TMPDIR)/$(ARCHIVE)
	@tar czf $(ARCHIVE).tar.bz2 -C $(TMPDIR) $(ARCHIVE)
	@-rm -rf $(TMPDIR)/$(ARCHIVE)
	@echo Distribution package created as $(ARCHIVE).tar.bz2

clean:
	@rm -f *~ *.bz2

.PHONY: all dist clean
