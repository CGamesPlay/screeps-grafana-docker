.PHONY: install

services := $(notdir $(wildcard systemd/*))

install: $(patsubst %, /etc/systemd/system/%, ${services})
	systemctl daemon-reload
	systemctl enable ${services}
	systemctl restart ${services}

/etc/systemd/system/%: systemd/%
	install -m0644 $< $@
