docker run -d \
  --name=steamos \
  --hostname=hostname `#optional` \
  --cap-add=NET_ADMIN \
  --security-opt seccomp=unconfined \
  --security-opt apparmor=unconfined `#optional` \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -e DRINODE=/dev/dri/renderD128 \
  -e HOST_IP=192.168.100.10 `#optional` \
  -e STARTUP=KDE `#optional` \
  -e RESOLUTION=1920x1080 `#optional` \
  -p 3000:3000 \
  -p 3001:3001 \
  -p 27031-27036:27031-27036/udp `#optional` \
  -p 27031-27036:27031-27036 `#optional` \
  -p 47984-47990:47984-47990 `#optional` \
  -p 48010-48010:48010-48010 `#optional` \
  -p 47998-48000:47998-48000/udp `#optional` \
  -v /path/to/config:/config \
  -v /dev/input:/dev/input `#optional` \
  -v /run/udev/data:/run/udev/data `#optional` \
  --device /dev/dri:/dev/dri \
  --shm-size="1gb" \
  --restart unless-stopped \
  lscr.io/linuxserver/steamos:latest

