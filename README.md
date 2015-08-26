# dev info

## general guidelines

Make sure you have read and understood the corresponding chapter in the book.

* never `git push -f`
* develop on feature branches *only*
  * naming: `TeamName-Feature`  
    * e.g. `delta-tablesort`
* always povide precise commit messages
  * see [other repos](https://github.com/ansible/ansible/commits/devel) for examples
* never break the `master`
  * merge feature branches into `develop`
  * *only* `develop` might be merged into `master`
* merge early
* never `git push -f` (just to be sure :))

## example workflow

(I haven't tested this, so feel free to fix mistakes!)

After you have cloned the repository to you computer (or VM):
  
    # if you (e.g. team echo) start implmenenting a new feature (e.g. login):
    git checkout -b echo-login develop
    # initially push ("upload") your new branch
    git push -u origin echo-login
    
    # implement, and at reasonable points in time:
    # check if you need to "git add" newly created files:
    git status
    # add what you want to commit
    git add some_directory some_file some_other_file …
    # review your changes
    git diff
    # and then
    git commit
    # push, if you like
    git push
    # (probably) go on implementing and repeat
    
    # when done implementing the feature (and tests):
    
    # checkout develop branch
    git checkout develop
    # and pull the latest changes
    git pull
    # merge your code into develop
    git merge echo-login
    # test if everything still works
    # (probably fix merge conflicts and tests)
    # commit everything
    
    # merge into master (same procedure)
    git checkout master
    git pull
    git merge develop
    # nothing should ever break doing this
    
    # push all branches (echo-login, develop, master in this case)
    git push -a
