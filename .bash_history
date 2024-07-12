docker login -u tomasblanco
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202407_Recu/script_Precondicion.sh
source ~/.bashrc && history -a
sudo fdisk /dev/sdd
sudo fdisk -l
sudo fdisk /dev/sdd
sudo fdisk /dev/sde
sudo fdisk /dev/sdc
sudo fdisk -l
sudo pvcreate /dev/sdd1 /dev/sdd2 /dev/sdc1 /dev/sde1
sudo vgcreate vg_datos /dev/sdd1 /dev/sdd2 /dev/sde1
sudo vgcreate vg_temp /dev/sdc1
sudo lvcreate -L +10M vg_datos -n lv_docker
sudo lvcreate -l +100%FREE vg_datos -n lv_multimedia
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo lvs
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo mkswap /dev/sdc2
sudo swapon /dev/vg_temp/lv_swap
sudo swapon /dev/sdc2
free -h
sudo swapon /dev/mapper/vg_temp-lv_swap
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo systemctl restart docker
sudo systemctl status docker
lsblk -f
ls /
sudo mkdir /Multimedia
sudo mount /dev/mapper/vg_datos-lv_multimedia /Multimedia
lsblk -f
history
history | sed -n '5,32p' >> RTA_Examen_20240712/Punto_A.sh 
cat RTA_Examen_20240712/Punto_A.sh 
cat UTN-FRA_SO_Examenes/202407_Recu/bash_script/Lista_URL.txt 
cat UTN-FRA_SO_Examenes/202407_Recu/bash_script/check_URL.sh 
cd /usr/local/bin/
sudo vim blanco_check_URL.sh
ll
sudo blanco_check_URL.sh /home/blanco/UTN-FRA_SO_Examenes/202407_Recu/bash_script/Lista_URL.txt 
sudo chmod 777 blanco_check_URL.sh 
sudo blanco_check_URL.sh /home/blanco/UTN-FRA_SO_Examenes/202407_Recu/bash_script/Lista_URL.txt 
cat /var/log/status_URL.log 
ls -R /tmp/head-check/
rm -r /tmp/head-check/
sudo rm -r /tmp/head-check/
sudo vim blanco_check_URL.sh
sudo blanco_check_URL.sh /home/blanco/UTN-FRA_SO_Examenes/202407_Recu/bash_script/Lista_URL.txt 
ls -R /tmp/head-check/
cat /var/log/status_URL.log 
sudo rm -r /tmp/head-check/
sudo rm /var/log/status_URL.log 
sudo blanco_check_URL.sh /home/blanco/UTN-FRA_SO_Examenes/202407_Recu/bash_script/Lista_URL.txt 
cat /var/log/status_URL.log 
ls -R /tmp/head-check/
cd
history
history | sed -n '37,57p' >> RTA_Examen_20240712/Punto_B.sh 
cat RTA_Examen_20240712/Punto_B
cat RTA_Examen_20240712/Punto_B.sh 
cd UTN-FRA_SO_Examenes/202407_Recu/docker/
ll
vim web/index.html 
vim dockerfile 
docker build -t tomasblanco/web2-blanco:v1 .
sudo fdisk -l
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdd5
sudo vgextend vg_datos /dev/sdd5
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo lvs
sudo resize2fs /dev/mapper/vg_datos-lv_docker
docker build -t tomasblanco/web2-blanco:v1 .
docker push tomasblanco/web2-blanco:v1
vim docker-compose.yml 
cat /proc/cpuinfo | grep -m 1 "model name"
cat /proc/cpuinfo | grep -m 1 "model name" | awk '{print "CPU Modelo: " $4,$5,$6}'
cat /proc/cpuinfo | grep -m 1 "model name" | awk '{print "CPU Modelo: " $4,$5,$6 "Frecuencia: " $8}'
cat /proc/cpuinfo | grep -m 1 "model name" | awk '{print "CPU Modelo: " $4,$5,$6 "Frecuencia: " $9}'
cat /proc/cpuinfo | grep -m 1 "model name" | awk '{print "CPU Modelo: " $4,$5,$6 " Frecuencia: " $9}'
ll
cat web/file/info.txt 
cat /proc/cpuinfo | grep -m 1 "model name" | awk '{print "CPU Modelo: " $4,$5,$6 " Frecuencia: " $9}' > web/file/info.txt 
cat web/file/info.txt 
docker compose up -d
docker compose ps
curl localhost:8081
cd
history 
history | sed -n '63,89p' >> RTA_Examen_20240712/Punto_C.sh 
cat RTA_Examen_20240712/Punto_C.sh 
ssh-keygen
cd ./ssh
ll
cd .ssh/
cat id_rsa.pub >> authorized_keys
cd
cd UTN-FRA_SO_Examenes/202407_Recu/ansible/
ll
cd roles/2PRecuperatorio/tasks/
ll
vim main.yml 
cd ..
ll
cd vars/
ll
vim main.yml 
cd ..
ll
mkdir templates
cd templates/
vim template_01.j2
cd ..
ll
cd ..
ll
ansible-galaxy role init Instala-tools_Blanco
cd Instala-tools_Blanco/
LL
ll
cd tasks/
vim main.yml 
cd ..
ll
vim playbook.yml 
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
cd
history
history | sed -n '94,128p' >> RTA_Examen_20240712/Punto_D.sh 
git config --global user.name "tomas blanco"
git config --global user.email "tomiblanco98@gmail.com"
cat /home/blanco/ .ssh//id_rsa.pub 
cat /home/blanco/.ssh//id_rsa.pub 
cat /home/blanco/.ssh/id_rsa.pub 
git clone git@github.com:TomasBlanco98/UTNFRA_SO_Recu_2do_Parcial_Blanco.git
ll
cp -R UTN-FRA_SO_Examenes/202407_Recu/ UTNFRA_SO_Recu_2do_Parcial_Blanco/
cd UTNFRA_SO_Recu_2do_Parcial_Blanco/
git status
git add .
git commit -m "Subiendo la carpeta principal"
git push origin master
cd
cp -R RTA_Examen_20240712/ UTNFRA_SO_Recu_2do_Parcial_Blanco/
cd UTNFRA_SO_Recu_2do_Parcial_Blanco/
git status
git add .
git commit -m "Subiendo carpeta de respuestas"
git push origin master
cd
cat $HOME/.bash_history
