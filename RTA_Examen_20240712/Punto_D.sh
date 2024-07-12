   94  ssh-keygen
   95  cd ./ssh
   96  ll
   97  cd .ssh/
   98  cat id_rsa.pub >> authorized_keys
   99  cd
  100  cd UTN-FRA_SO_Examenes/202407_Recu/ansible/
  101  ll
  102  cd roles/2PRecuperatorio/tasks/
  103  ll
  104  vim main.yml 
  105  cd ..
  106  ll
  107  cd vars/
  108  ll
  109  vim main.yml 
  110  cd ..
  111  ll
  112  mkdir templates
  113  cd templates/
  114  vim template_01.j2
  115  cd ..
  116  ll
  117  cd ..
  118  ll
  119  ansible-galaxy role init Instala-tools_Blanco
  120  cd Instala-tools_Blanco/
  121  LL
  122  ll
  123  cd tasks/
  124  vim main.yml 
  125  cd ..
  126  ll
  127  vim playbook.yml 
  128  ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
