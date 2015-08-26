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
