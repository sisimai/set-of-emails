# set-of-emails/Makefile
#  __  __       _         __ _ _      
# |  \/  | __ _| | _____ / _(_) | ___ 
# | |\/| |/ _` | |/ / _ \ |_| | |/ _ \
# | |  | | (_| |   <  __/  _| | |  __/
# |_|  |_|\__,_|_|\_\___|_| |_|_|\___|
# -----------------------------------------------------------------------------
SHELL := /bin/sh
CP    := cp
RM    := rm -f
GIT   := /usr/bin/git
B      = master
V      = neko

.DEFAULT_GOAL = git-status

# -----------------------------------------------------------------------------
.PHONY: clean

git-status:
	$(GIT) status

git-push:
	@ for v in `$(GIT) remote show | grep -v origin`; do \
		printf "[%s]\n" $$v; \
		$(GIT) push --tags $$v $(B); \
	done

git-tag-list:
	$(GIT) tag -l

git-diff:
	$(GIT) diff -w

git-branch:
	$(GIT) branch -a

git-branch-delete:
	$(GIT) branch --merged | grep '^ ' | grep -v 'master' | xargs $(GIT) branch -d

git-commit-amend:
	$(GIT) commit --amend

git-follow-log:
	$(GIT) log --follow -p $(V) || \
		printf "\nUsage:\n %% make -f Repository.mk $@ V=<filename>\n"

git-branch-tree:
	$(GIT) log --graph \
		--pretty='format:%C(yellow)%h%Creset %s %Cgreen(%an)%Creset %Cred%d%Creset'

git-rm-cached:
	$(GIT) rm -f --cached $(V) || \
		printf "\nUsage:\n %% make -f Repository.mk $@ V=<filename>\n"

git-reset-soft:
	$(GIT) reset --soft HEAD^

fix-commit-message: git-commit-amend
cancel-the-latest-commit: git-reset-soft
remove-added-file: git-rm-cached

clean:

