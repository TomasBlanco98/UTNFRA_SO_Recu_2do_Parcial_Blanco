    5  sudo fdisk /dev/sdd
    6  sudo fdisk -l
    7  sudo fdisk /dev/sdd
    8  sudo fdisk /dev/sde
    9  sudo fdisk /dev/sdc
   10  sudo fdisk -l
   11  sudo pvcreate /dev/sdd1 /dev/sdd2 /dev/sdc1 /dev/sde1
   12  sudo vgcreate vg_datos /dev/sdd1 /dev/sdd2 /dev/sde1
   13  sudo vgcreate vg_temp /dev/sdc1
   14  sudo lvcreate -L +10M vg_datos -n lv_docker
   15  sudo lvcreate -l +100%FREE vg_datos -n lv_multimedia
   16  sudo lvcreate -l +100%FREE vg_temp -n lv_swap
   17  sudo lvs
   18  sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
   19  sudo mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia
   20  sudo mkswap /dev/mapper/vg_temp-lv_swap
   21  sudo mkswap /dev/sdc2
   22  sudo swapon /dev/vg_temp/lv_swap
   23  sudo swapon /dev/sdc2
   24  free -h
   25  sudo swapon /dev/mapper/vg_temp-lv_swap
   26  sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
   27  sudo systemctl restart docker
   28  sudo systemctl status docker
   29  lsblk -f
   30  ls /
   31  sudo mkdir /Multimedia
   32  sudo mount /dev/mapper/vg_datos-lv_multimedia /Multimedia
