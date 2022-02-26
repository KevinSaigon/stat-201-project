# STAT 201 Project: \<Insert Catchy Title\>

### Deployment Process

- when working on code, make a new branch via `git branch name-branch_number`

  - ex. if Kevin was working on his first ever branch, he'd do `git branch kevin-1`

- <u>remember to checkout to that branch</u> - make sure you're not working on master or committing to master

  - use `git checkout branch-name`
    - ex. `git checkout kevin-1`
  - you can check what branch you're on by using `git status`

- try to commit often and with meaningful messages

  - first you need to add the files you want to stage via `git add filename`

  - then you want to commit with `git commit`

    - if you want to commit with comments then it's `git commit -m "<insert message>"`

  - ex. if Sandra was modifying the README.md file, she'd do

    ```shell
    git branch sandra-1
    git checkout sandra-1
    git add README.md
    git commit -m "modified README.md"
    git push
    ```

- use `git push` to actually push it up to GitHub
  - first time pushing on a new branch it'll ask if you want to set upstream, just copy what they have and press enter
- once you're happy with your push, start a pull request, team members will approve and we will merge
- after everything is merged, you can feel free to delete your branch on GitHub
