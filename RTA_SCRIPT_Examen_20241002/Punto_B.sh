#!/bin/bash

DISCO="/dev/sdc"

sudo fdisk "$DISCO" << EOF
n
p


+100M
n
p


+100M
n
p


+100M
n
e

+710M
n

+100M
n

+100M
n

+100M
n

+100M
n

+100M
n

+100M
n

+100M
p
w
EOF
echo "Formateando las particiones"
sudo mkfs.ext4 ${DISCO}1
sudo mkfs.ext4 ${DISCO}2
sudo mkfs.ext4 ${DISCO}3
sudo mkfs.ext4 ${DISCO}5
sudo mkfs.ext4 ${DISCO}6
sudo mkfs.ext4 ${DISCO}7
sudo mkfs.ext4 ${DISCO}8
sudo mkfs.ext4 ${DISCO}9
sudo mkfs.ext4 ${DISCO}10
sudo mkfs.ext4 ${DISCO}11

echo
echo "Montando de forma PERSISTENTE"

echo "UUID=634a5b1f-83d5-423a-98d6-2536a9453144  /Examenes-UTN/alumno_1/parcial_1  ext4  defaults  0  2" | sudo tee -a /etc/fstab
echo "UUID=861b2621-f0e9-49dd-b7c4-95cea5bdbf4e  /Examenes-UTN/alumno_1/parcial_2  ext4  defaults  0  2" | sudo tee -a /etc/fstab
echo "UUID=602da879-083a-44b8-947f-a01c5f61efc5  /Examenes-UTN/alumno_1/parcial_3  ext4  defaults  0  2" | sudo tee -a /etc/fstab
echo "UUID=b41098a3-d656-4b30-b5ed-490070ce7be2  /Examenes-UTN/alumno_2/parcial_2  ext4  defaults  0  2" | sudo tee -a /etc/fstab
echo "UUID=a52958bb-0c10-48fa-8f3b-507bc27f3a8b  /Examenes-UTN/alumno_2/parcial_3  ext4  defaults  0  2" | sudo tee -a /etc/fstab
echo "UUID=daf85740-5c0d-46c3-964e-e66143cfc9cb  /Examenes-UTN/alumno_3/parcial_1  ext4  defaults  0  2" | sudo tee -a /etc/fstab
echo "UUID=60f54807-7714-406d-83fe-60910dfc3828  /Examenes-UTN/alumno_3/parcial_2  ext4  defaults  0  2" | sudo tee -a /etc/fstab
echo "UUID=45c2a066-8eac-4bff-83f7-2583cb8e9452  /Examenes-UTN/alumno_3/parcial_3  ext4  defaults  0  2" | sudo tee -a /etc/fstab
echo "UUID=da7f422f-879c-4a2b-a5e7-c6228d2c912c  /Examenes-UTN/profesores           ext4  defaults  0  2" | sudo tee -a /etc/fstab



echo
echo "Muestro montajes"

sudo df -h
lsblk -f /dev/sdc
