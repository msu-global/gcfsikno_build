# gcfsikno_build
A Drupal installation profile that also contains a drush make file for handling dependencies.

## How to build the GCFSI Knowledge Platform
1. Clone this repo
2. Do `drush make gcfsikno_build.make`
3. Set up your MySQL database and user as you normally would
4. Set up the /files directory and settings.php as you normally would
5. Copy the entire gcfsikno_build directory into `/profiles`
6. Install Drupal via a web browser, as you normally would

## What does the drush make file do?
* Downloads Drupal core of a specific version
* Downloads specific versions of all contrib modules we're using
* Downloads the latest commit in specific branches of our custom modules.  These modules are hosted on github, and drush make is able to fetch them from git

## What does the installation profile do?
* It enables all of the necessary modules, and their dependencies
* It sets the default theme, and admin theme
* It prevents annoying default modules, such overlay, from being installed

## How do I keep this up to date?
* If you ever update a module, theme, or Drupal Core, make sure you update the version number in the gcfsikno_build.make file, otherwise future developers who use drush make will download out-of-date versions
