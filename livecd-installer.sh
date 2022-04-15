#!/bin/bash
#sudo fdisk -l
#unsquashfs
#mkdir /tmp/livecddisk
#sudo mount $1 /tmp/livecddisk
#cd /tmp/livecddisk
#sudo unsquashfs $2 
#sudo mv /tmp/livecddisk/squashfs-root/* /tmp/livecddisk
#sudo rm -rfv /tmp/livecddisk/squashfs-root
toilet Setting!
echo "※设置 root 密码"
sudo passwd root
echo "※修复 sudo 和 pkexec 配置"
sudo python3 /usr/bin/setsudo.py
sudo rm -rfv /var/lib/polkit-1/localauthority/50-local.d/disable-passwords.pkla
echo "※卸载无用软件包"
sudo apt purge -y org.gnome.gucharmap
sudo apt purge -y todesk 
sudo apt purge -y org.testdisk 
sudo apt purge -y com.poweriso.spark 
sudo apt purge -y timeshift 
sudo apt purge -y deepin-repair-tools 
sudo apt purge -y spark-simple-remote-desktop-accessor 
sudo apt purge -y gparted 
sudo apt purge -y io.github.cpu-x 
sudo apt purge -y net.sourceforge.cpug 
sudo apt purge -y professional-packages.chinauos.com.ukopp
sudo rm -rfv /usr/share/applications/cpu-g.desktop
sudo rm -rfv /usr/share/applications/cpu-x.desktop
sudo rm -rfv /usr/share/applications/org.testdisk.desktop
sudo rm -rfv /usr/share/applications/ukopp.desktop
sudo rm -rfv /usr/share/applications/org.gnome.gucharmap.desktop
sudo rm -rfv usr/share/applications/uos-livecdtools.desktop
sudo rm -rfv /usr/share/applications/deepin-live-community-cd-mini-app-store.desktop
sudo rm -rfv /usr/share/applications/tr.org.pardus.boot-repair.desktop
sudo rm -rfv /usr/share/applications/uos-livecdtools.desktop
sudo rm -rfv /usr/bin/uos-livecdtools
sudo rm -rfv /usr/bin/pardus-boot-repair
sudo rm -rfv /usr/bin/deepin-live-community-cd-mini-app-store
echo "重新安装部分应用"
sudo apt reinstall -y dde 
sudo apt reinstall -y deepin-wallpapers 
sudo apt reinstall -y deepin-clone 
sudo apt install -y grub-themes-deepin
sudo apt install -y deepin-app-store 
sudo apt install -y deepin-image-viewer
sudo apt install -y deepin-camera
sudo apt install -y deepin-deb-installer
sudo apt install -y deepin-draw
sudo apt install -y deepin-font-manager
sudo apt install -y deepin-log-viewer
sudo apt install -y deepin-mail
sudo apt install -y deepin-movie
sudo apt install -y deepin-music
sudo apt install -y deepin-ocr
sudo apt install -y deepin-voice-note
echo "更新操作系统"
sudo apt update
sudo apt upgrade -y
sudo update-grub
echo "删除临时文件"
sudo rm -rfv /usr/share/applications/livecd-installer.desktop
sudo rm -rfv /usr/bin/livecd-installer
sudo rm -rfv /usr/bin/setsudo.py
sudo apt autopurge -y
echo "更换默认壁纸"
sudo killall deepin-desktop
echo "提示："
echo "    请自行修改壁纸以及关闭自动登录等功能并安装自己想要的应用"
read -p "按回车键继续……"
#sudo python3 adduser.py
# 第三阶段
#sudo userdel -r XXX