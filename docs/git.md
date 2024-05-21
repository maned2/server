```commandline

#get changes from all remotes
git fetch --all

# undo last local commit
git reset HEAD~1

# create branch and checkout into
git checkout -b <branchName>

# submodules https://git-scm.com/book/ru/v2/%D0%98%D0%BD%D1%81%D1%82%D1%80%D1%83%D0%BC%D0%B5%D0%BD%D1%82%D1%8B-Git-%D0%9F%D0%BE%D0%B4%D0%BC%D0%BE%D0%B4%D1%83%D0%BB%D0%B8
#add
git submodule add <url> <path>

# rebase
git checkout dev

git rebase master

git push --force origin dev

# squash commits
#show diff with master branch
git cherry -v master

git rebase -i HEAD~4
# first - pick
# other - squash

# edit message on next step

git push --force origin dev
```