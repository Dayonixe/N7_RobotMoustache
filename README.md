# Project - Robot Moustache

Team : Nouhaila A. & Théo Pirouelle

<a href="https://www.lustre.org/download/">
  <img src="https://img.shields.io/badge/language-Lustre-f90?style=flat-square" alt="laguage-Lustre" />
</a>

---

## Installation de Lustre


[Lien de téléchargement](https://www-verimag.imag.fr/DIST-TOOLS/SYNCHRONE/lustre-v4/distrib/index.html)

Commandes pour pouvoir utiliser les commandes Lustre :

```sh
export LUSTRE_INSTALL=[chemin_vers_le_repertoire]/lustre-v4-III-ea-linux64/
source $LUSTRE_INSTALL/setenv.sh
```

## Utilisation du robot

Le robot se connecte au PC host via un port USB.
Sur le PC Host, dans les paramètres réseaux, aller dans la connexion réseau Ethernet USB, dans les paramètres de la connexion filaire et dans IPV4, sélectionner « réseau local uniquement », désactiver DNS et Routes.

Sur le PC host :

```sh
# Compiler
lus2c tp3_robot.lus main_robot

# Envoi des fichiers
scp main_robot.c robot@[adresse_ip_du_robot]:ev3dev-c/eg/robot_isae/.
scp main_robot.h robot@[adresse_ip_du_robot]:ev3dev-c/eg/robot_isae/.
scp main_robot_ext.h robot@[adresse_ip_du_robot]:ev3dev-c/eg/robot_isae/.
```

Sur le robot :

```sh
# Accéder au robot
ssh robot@[adresse_ip_du_robot]

# Compiler
make release

# Lancer le robot
/home/robot/ev3dev-c/eg/robot_isae/Release/robot_isae
```
