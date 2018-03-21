CHECK=\033[32m✔\033[39m
DONE="${CHECK} DONE."

all: install

install: init-submodules install-go-tools
	@echo $(DONE)

install-go-tools:
	@go get -u github.com/rogpeppe/godef
	@go get -u github.com/nsf/gocode
	@go get -u github.com/kisielk/errcheck

init-submodules:
	@echo "Initializing submodules"
	@git submodule init && git submodule update && git submodule status

override:
	ln -s ~/emacs/init.el ~/.emacs

new-submodule:
	@echo "Creating new submodule '${name}' from ${git}"
	@git submodule add --force ${git} libs/${name}
	@echo $(DONE)

update: update-repo init-submodules update-submodules

update-repo:
	git pull origin master
	@echo $(DONE)

update-submodules:
	@echo "Updating submodules"
	@git submodule foreach "(git checkout master; git pull)&"
	@echo $(DONE)

clean:

.PHONY: clean
