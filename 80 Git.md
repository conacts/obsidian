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


`git branch -a`
Shows all git branch history

```
[cs@zsh] ~/Obsidian/masterVault$ git branch -a
  iss53
* main
  remotes/origin/main
```

`git branch -c`

Moves the current git branch you are working on 

`git branch -d`
Deletes the current git branch

`git branch -D`
Deletes the current git branch (even if not merged)


`git branch -m`
Move/Rename the current git branch 

##### git checkout
`git checkout`

```
[cs@zsh] ~/Obsidian/masterVault$ git checkout
M .obsidian/workspace
M 80 Git.md
Your branch is up to date with 'origin/main'.
```

`git checkout -b <branch name>`
Create and checkout a new branch

`git checkout <branch name>`
Switch branch to a new branch

`git checkout HEAD`
Always switches to the main branch of the project

`git checkout -m`
Perform a 3-way merge with the new branch

`git checkout -f`
Force checkout (throw away local modifications)

`git checkout --ours`
Checkout our version for unmerged files

`git checkout -p`
Select hunks interactively

##### git status

`git status`

```
On branch main
Your branch is up to date with 'origin/main'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   .obsidian/workspace
	modified:   80 Git.md

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	Pasted image 20220421050641.png
	Pasted image 20220421050849.png

no changes added to commit (use "git add" and/or "git commit -a")

```

`git status -v`
Verbose output of git status


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
The combination of two branches of a git repository
- Git uses 3 commits for a merge

![[Pasted image 20220421050849.png |400]]


##### Fast Forward Merge
When you merge your git repository without the creation of a new branch

![[Pasted image 20220421050641.png |400]]

`git pull`
Pull all updates from git

`git push`
Adds all the committed changes to the current `HEAD` of the branch

### Cloning
Copying a git repository and adding it on your local machine

`git clone <repo url>`
Copies the most recent version of a git project

`git clone --branch <branch> <repo url>`
Copies a specific branch of a git repository

### Creating a git Repository
1. `git init`
2. `git remote add <branch name> <repo url>`
	1. typically this will be `git remote add main <repo url>`
3. `git push -u origin <branch name>`
	1. typically this will be `git push -u origin main`



### Steps to Push to Github
1. `git add <file names>`
2. `git commit -m "commit message"`
3. `git push`
