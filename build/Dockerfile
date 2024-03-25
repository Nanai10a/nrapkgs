from docker.io/menci/archlinuxarm

run mkdir /etc/sudoers.d &&\
    echo 'build ALL=(ALL:ALL) NOPASSWD: ALL' > /etc/sudoers.d/build

run pacman-key --init &&\
    pacman-key --recv-keys 68B3537F39A313B3E574D06777193F152BDBE6A6 &&\
    pacman-key --lsign-key 68B3537F39A313B3E574D06777193F152BDBE6A6 &&\
    pacman -Syu --noconfirm base-devel

copy ./build.sh /usr/bin/build.sh
run chmod +x /usr/bin/build.sh

cmd ["build.sh"]
