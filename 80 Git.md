### Branches
The structure git is based on where you have a main branch from which you create separate branches. Each branch represents another version of that code, typically used for the creation of new features and bug fixes.

#### git branch
A command to display all the branches in your current git project.
```
[cs@zsh] ~/Obsidian/masterVault$ git branch
  iss53
* main
```

##### Helpful git branch commands
`git branch -v`
Shows latest git commit messages per branch

```
[cs@zsh] ~/Obsidian/masterVault$ git branch -v
  iss53 a30db03 fixing 360 hw
* main  b513d9a more cmpsc 360
```

---

`git branch -a`
Shows all git branch history

```
[cs@zsh] ~/Obsidian/masterVault$ git branch -a
  iss53
* main
  remotes/origin/main
```

---

`git branch -c`

Moves the current git branch you are working on 

`git branch -d`
Deletes the current git branch

`git branch -D`
Deletes the current git branch (even if not merged)


`git branch -m`
Move/Rename the current git branch 


##### git status


### Commits
`git commit -F`
Read message from file

`git commit -m`
Writes message to a git commit

`git commit -e`
Force an edit of commit

`git commit --status`
Include status in commit message template

`git commit --branch` 
Shows branch information


### Merge 
The combination of two branches of a git repository.

### Cloning

### Pushing to Github