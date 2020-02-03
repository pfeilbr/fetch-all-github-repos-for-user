.PHONY: install

install:
	cp fetch-all-github-repos-for-user.sh ~/bin
	chmod a+x ~/bin/fetch-all-github-repos-for-user.sh

all: install