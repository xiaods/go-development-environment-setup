#!/bin/bash

cd $(dirname $0)/../go-recipes/cookbooks
[[ -d "chef-zip" ]] || git clone https://github.com/phlipper/chef-zip
[[ -d "git" ]] || git clone https://github.com/opscode-cookbooks/git.git
[[ -d "subversion" ]] || git clone https://github.com/opscode-cookbooks/subversion.git

[[ -d "java" ]] || git clone http://github.com/opscode-cookbooks/java.git

[[ -d "ruby-cookbook" ]] || git clone https://github.com/jtimberman/ruby-cookbook.git
[[ -d "chef-recipe-rake" ]] || git clone https://github.com/erniebrodeur/chef-recipe-rake.git
[[ -d "opscode-chef-cookbook-sass" ]] || git clone https://github.com/jtgraphic/opscode-chef-cookbook-sass.git
