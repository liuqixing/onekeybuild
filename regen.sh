./remove-all-data.sh
sudo killall -9 node
./0.install.sh
./1.create_conf.sh
./2.create_gen.sh
./3.StartHubandWitnesses.sh
./4.finish.sh