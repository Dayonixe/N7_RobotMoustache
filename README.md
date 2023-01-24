# Project - Robot Lego

Team : Nouhaila A. & Théo Pirouelle

<a href="https://www.lustre.org/download/">
  <img src="https://img.shields.io/badge/language-Lustre-f90?style=flat-square" alt="laguage-Lustre" />
</a>

---

```sh
export LUSTRE_INSTALL=/home/theo/Documents/Lustre/lustre-v4-III-ea-linux64/
source $LUSTRE_INSTALL/setenv.sh
```

```sh
make release  # Compiler
/home/robot/ev3dev-c/eg/robot_isae/Release/robot_isae  # Lancer le robot
```

```sh
lus2c tp3_robot.lus main_robot  # Compiler
scp main_robot.c robot@169.254.184.121:ev3dev-c/eg/robot_isae/.  # Envoi fichier
scp main_robot.h robot@169.254.184.121:ev3dev-c/eg/robot_isae/.  # Envoi fichier
scp main_robot_ext.h robot@169.254.184.121:ev3dev-c/eg/robot_isae/.  # Envoi fichier
```
