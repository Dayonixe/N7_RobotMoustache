# Project - Robot Moustache

Team : Nouhaila A. & Théo Pirouelle

<a href="https://www.lustre.org/download/">
  <img src="https://img.shields.io/badge/language-Lustre-f90?style=flat-square" alt="laguage-Lustre" />
</a>

---

## Lustre Installation


[Download link](https://www-verimag.imag.fr/DIST-TOOLS/SYNCHRONE/lustre-v4/distrib/index.html)

Controls to use the Lustre controls:

```sh
export LUSTRE_INSTALL=[chemin_vers_le_repertoire]/lustre-v4-III-ea-linux64/
source $LUSTRE_INSTALL/setenv.sh
```

## Use of the robot

The robot connects to the host PC via a USB port.
On the host PC, in the network settings, go to the USB Ethernet network connection, in the wired connection settings and in IPV4, select "local network only", deactivate DNS and Routes.

On the host PC:

```sh
# Compile
lus2c tp3_robot.lus main_robot

# Sending the files
scp main_robot.c robot@[adresse_ip_du_robot]:ev3dev-c/eg/robot_isae/.
scp main_robot.h robot@[adresse_ip_du_robot]:ev3dev-c/eg/robot_isae/.
scp main_robot_ext.h robot@[adresse_ip_du_robot]:ev3dev-c/eg/robot_isae/.
```

On the robot:

```sh
# Access to the robot
ssh robot@[adresse_ip_du_robot]

# Compile
make release

# Launch the robot
/home/robot/ev3dev-c/eg/robot_isae/Release/robot_isae
```
