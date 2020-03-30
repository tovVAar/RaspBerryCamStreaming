# https://www.raspberrypi.org/documentation/usage/camera/raspicam/raspivid.md
raspivid -o - -t 0 -n -w 1280 -h 720 -fps 30 | cvlc -vvv stream:///dev/stdin --sout '#standard{access=http,mux=ts,dst=:8090}' :demux=h264
