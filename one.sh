sudo apt-get install build-essential git jq tree ruby
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install 8.9.4
sudo npm install pm2 -g
sudo npm install node-gyp -g

git clone https://github.com/trustnote/onekeybuild.git
cd onekeybuild
./0.install.sh
./1.create_conf.sh
./2.create_gen.sh
sleep 5
./3.StartHubandWitnesses.sh
./4.finish.sh
sleep 5
./5.payment.sh
