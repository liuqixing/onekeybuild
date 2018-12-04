#!/bin/bash
git clone https://github.com/trustnote/onekeybuild.git
cd onekeybuild
./1.install.tools.sh
./2.install.tsdn.sh
./3.install.genesis_scripts.sh
# ./4.config.sh
ruby 4.config.rb
./5.gen.sh
# ./6.finishbuild.sh
ruby 6.config.rb
./7.firstrun.sh