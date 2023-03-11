#!/bin/bash

echo "-----------------------------------------------------------------------------------------------------"

echo "Criando os diretórios requisitados pelo desafio"

echo "-----------------------------------------------------------------------------------------------------"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "-----------------------------------------------------------------------------------------------------"

echo "Criando grupos de usuários requisitados pelo desafio"

echo "-----------------------------------------------------------------------------------------------------"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "-----------------------------------------------------------------------------------------------------"

echo "Criando usuários requisitados pelo desafio"

echo "-----------------------------------------------------------------------------------------------------"

useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "-----------------------------------------------------------------------------------------------------"

echo "Configurando permissões requisitados para os diretórios"

echo "-----------------------------------------------------------------------------------------------------"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777

echo "-----------------------------------------------------------------------------------------------------"

echo "Finalizando configurações de infraestrutura requisitado pelo desafio"

echo "-----------------------------------------------------------------------------------------------------"