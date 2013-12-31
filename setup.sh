#!/bin/sh

cd go-recipes/cookbooks

git clone https://github.com/opscode-cookbooks/git.git
git clone https://github.com/opscode-cookbooks/subversion.git

git clone http://github.com/opscode-cookbooks/java.git

git clone https://github.com/jtimberman/ruby-cookbook.git
git clone https://github.com/erniebrodeur/chef-recipe-rake.git
git clone https://github.com/jtgraphic/opscode-chef-cookbook-sass.git

cd ../..

HEADLESS=true vagrant up
vagrant halt
vagrant up --no-provision
