#!/bin/sh
set -e

echo "Starting the Jekyll Action"

echo "::debug ::Starting bundle install"
bundle config path vendor/bundle
bundle install
echo "::debug ::Completed bundle install"

bundle exec jekyll build
echo "Jekyll build done"

cd build

# No need to have GitHub Pages to run Jekyll
# touch .nojekyll

exit $?