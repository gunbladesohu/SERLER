| master | develop | 
| ------ | ------- |
| [![Build Status](https://travis-ci.org/sdm15stream2/serler.svg?branch=master)](https://travis-ci.org/sdm15stream2/serler?branch=master)                                    | [![Build Status](https://travis-ci.org/sdm15stream2/serler.svg?branch=develop)](https://travis-ci.org/sdm15stream2/serler?branch=develop) |
| [![Coverage Status](https://coveralls.io/repos/sdm15stream2/serler/badge.svg?branch=master&service=github)](https://coveralls.io/github/sdm15stream2/serler?branch=master) | [![Coverage Status](https://coveralls.io/repos/sdm15stream2/serler/badge.svg?branch=develop&service=github)](https://coveralls.io/github/sdm15stream2/serler?branch=develop) |

# Git guidelines

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

# developer information

(Those probably have to be moved to a proper plave!?)

## search engine - Sunspot

Sunspot is a Ruby library for expressive, powerful interaction with the Solr search engine. Sunspot is built on top of the RSolr library, which provides a low-level interface for Solr interaction; Sunspot provides a simple, intuitive, expressive DSL backed by powerful features for indexing objects and searching for them.

* the gem have already added into Gemfiles
* `bundle install`
* Generate a default configuration file:
 * `rails generate sunspot_rails:install`
* If sunspot_solr was installed, start the packaged Solr distribution with:
 * `bundle exec rake sunspot:solr:start` 
 * or `sunspot:solr:run` to start in foreground
