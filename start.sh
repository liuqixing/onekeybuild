pm2 delete all

pm2 start  ./trustnote-hub/start.js --name hub

for i in {1..12}
do
    pm2 start  ./witness$i/start.js --name witness$i
done

# for i in {13..15}
# do
#     pm2 start  ./headless$i/start.js --name headless$i
# done

pm2 start  ./trustnote-explorer/explorer.js --name explorer
pm2 start  ./fusion-server/index.js --name apiServer

echo deploy finshed
