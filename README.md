# Projet SnowCrash

![Statut du projet](https://img.shields.io/badge/statut-compl%C3%A9t%C3%A9-4caf50) ![Difficulté](https://img.shields.io/badge/difficulté-débutant-green)
![Outils Utilisés](https://img.shields.io/badge/outils%20utilis%C3%A9s-GDB%20%7C%20ltrace%20%7C%20strace%20%7C%20John%20the%20Ripper%20%7C%20Wireshark-ADD8E6)  

## Description

**SnowCrash** est un projet de cybersécurité introductif de l'École 42. Il vise à faire découvrir divers sous-domaines de la sécurité informatique. L'objectif est de renforcer les compétences en sécurité informatique, de développer une pensée logique et de s'habituer aux méthodes de recherche et d'analyse de vulnérabilités.

Chaque niveau se déroule dans une machine virtuelle (VM) 64 bits fournie, et présente un challenge à relever pour trouver un mot de passe permettant d'accéder au niveau suivant. Les méthodes varient de la simple exploration système à des techniques plus avancées d'exploitation.

Les compétences développées incluent :  
- La recherche et l'exploitation des vulnérabilités, comme les problèmes de permissions, les injections de commande, la manipulation des fichiers, ...
- L'utilisation d'outils de débogage et d'analyse tels que `GDB`, `ltrace`, `strace`, `John the Ripper`, `Wireshark`.
- Le renforcement des bonnes pratiques de développement sécurisé.

## Niveaux et Vulnérabilités

| Niveau   | Type de Vulnérabilité                          |
| -------- | ------------------------------------------ |
| Niveau 00| Déchiffrage code Caesar                   |
| Niveau 01| Command Injection                          |
| Niveau 02| Analyse de flux TCP - Wireshark            |
| Niveau 03| Modification du PATH - Appel de `system`   |
| Niveau 04| Exploit script Perl                        |
| Niveau 05| Exécution de tâche cron avec privilèges pour injection de commande                        |
| Niveau 06| Vulnérabilité REGEX PHP                    |
| Niveau 07| Injection par variable d'environnement     |
| Niveau 08| Bypass via lien symbolique                 |
| Niveau 09| Reverse de hash                            |
| Niveau 10| Race Condition                             |
| Niveau 11|Injection de Commande shell via io.popen  |
| Niveau 12| Faille via un sous-shell dans un script Perl|
| Niveau 13| Modification de valeur de retour avec GDB  |
| Niveau 14| Exploitation de `getflag`                  |

## Instructions pour Commencer

1. **Configuration de la VM :**
   - Démarrez la machine virtuelle fournie avec le projet.
   - Une fois lancée, une adresse IP sera affichée. Si ce n'est pas le cas, utilisez `ifconfig` pour l'obtenir.

2. **Connexion :**
   - Connectez-vous via SSH avec les identifiants fournis (`level00:level00`), en utilisant le port 4242 :
     ```bash
     ssh level00@<IP_ADDRESS> -p 4242
     ```

3. **Objectif :**
   - Chaque niveau contient un mot de passe stocké dans un fichier ou protégé par un mécanisme.
   - Le mot de passe récupéré permet de passer à l'utilisateur du niveau suivant (`flagXX`).

4. **Outils recommandés :**
   - **Débogage et Analyse :** `GDB`, `ltrace`, `strace`.
   - **Ingénierie inverse :** `strings`.
   - **Transfert de fichiers :** `scp` pour extraire et analyser des binaires localement.
       ```bash
        scp -P 4242 levelXX@<ip>:/path/on/the/vm ./path/on/my/machine
        ```

5. **Exemple d'exécution :**
   ```bash
   level00@SnowCrash:~$ su flag00
   Password:
   flag00@SnowCrash:~$ getflag
   Check flag.Here is your token : <TOKEN>
   flag00@SnowCrash:~$ su level01
   Password:
   level01@SnowCrash:~$
   ```

## Ressources

- [Chiffre de César - dCode](https://www.dcode.fr/chiffre-cesar)

---

