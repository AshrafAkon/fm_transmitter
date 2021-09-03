#/bin/bash
if [ $1 ] && [ $2 ]
then
        ffmpeg -i $1 -f s16le -ar 22.05k -ac 1 - | sudo ./fm_transmitter -f $2 -
        exit
fi
echo "Usage: ./start.sh <file> <freq>"
