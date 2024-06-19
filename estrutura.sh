#! /bin/bash

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados com sucesso!"
ls -l /

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com sucesso!"

useradd carlos -c "Carlos da Silva" -m -s /bin/bash -p $(openssl passwd Senha123)
useradd maria -c "Maria da Silva" -m -s /bin/bash -p $(openssl passwd Senha123)
useradd joao -c "João da Silva" -m -s /bin/bash -p $(openssl passwd Senha123)

useradd debora -c "Debora Nascimento" -m -s /bin/bash -p $(openssl passwd Senha123)
useradd sebastiana -c "Sebastiana Santos" -m -s /bin/bash -p $(openssl passwd Senha123)
useradd roberto -c "Roberto Dias" -m -s /bin/bash -p $(openssl passwd Senha123)

useradd josefina -c "Josefina Matos" -m -s /bin/bash -p $(openssl passwd Senha123)
useradd amanda -c "Amanda Martins" -m -s /bin/bash -p $(openssl passwd Senha123)
useradd rogerio -c "Rogerio Cardoso" -m -s /bin/bash -p $(openssl passwd Senha123)

echo "Usuários criados com sucesso!"

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Usuários inseridos nos grupos com sucesso!"

echo "Alterando permissões dos diretórios....."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Alterados os grupos dos diretórios com sucesso!"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Alteradas as permissões de todos os diretórios criados!"

echo "Configuração concluída com sucesso!"
