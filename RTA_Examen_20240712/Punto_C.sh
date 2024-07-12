   63  cd UTN-FRA_SO_Examenes/202407_Recu/docker/
   64  ll
   65  vim web/index.html 
   66  vim dockerfile 
   67  docker build -t tomasblanco/web2-blanco:v1 .
   68  sudo fdisk -l
   69  sudo fdisk /dev/sdd
   70  sudo pvcreate /dev/sdd5
   71  sudo vgextend vg_datos /dev/sdd5
   72  sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
   73  sudo lvs
   74  sudo resize2fs /dev/mapper/vg_datos-lv_docker
   75  docker build -t tomasblanco/web2-blanco:v1 .
   76  docker push tomasblanco/web2-blanco:v1
   77  vim docker-compose.yml 
   78  cat /proc/cpuinfo | grep -m 1 "model name"
   79  cat /proc/cpuinfo | grep -m 1 "model name" | awk '{print "CPU Modelo: " $4,$5,$6}'
   80  cat /proc/cpuinfo | grep -m 1 "model name" | awk '{print "CPU Modelo: " $4,$5,$6 "Frecuencia: " $8}'
   81  cat /proc/cpuinfo | grep -m 1 "model name" | awk '{print "CPU Modelo: " $4,$5,$6 "Frecuencia: " $9}'
   82  cat /proc/cpuinfo | grep -m 1 "model name" | awk '{print "CPU Modelo: " $4,$5,$6 " Frecuencia: " $9}'
   83  ll
   84  cat web/file/info.txt 
   85  cat /proc/cpuinfo | grep -m 1 "model name" | awk '{print "CPU Modelo: " $4,$5,$6 " Frecuencia: " $9}' > web/file/info.txt 
   86  cat web/file/info.txt 
   87  docker compose up -d
   88  docker compose ps
   89  curl localhost:8081
