.PHONY: install
install:
	mkdir -p ${HOME}/.config/wal/templates
	cp ./alacritty.rasi ${HOME}/.config/wal/templates
	cp ./xresources.rasi ${HOME}/.config/wal/templates
	cp ./wallchanger /usr/sbin/
	cp ./wallchanger.timer /lib/systemd/system/
	cp ./wallchanger.service /lib/systemd/system/
	systemctl daemon-reload
	systemctl enable wallchanger.timer

