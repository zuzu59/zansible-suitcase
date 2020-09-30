# zansible-suitcase
Juste le shell pour pouvoir utiliser ansible.suitcase de domq

zf200930.1202

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [zansible-suitcase](#zansible-suitcase)
	- [Buts](#buts)
	- [Installation](#installation)
	- [Utilisation](#utilisation)
	- [Sources](#sources)

<!-- /TOC -->


## Buts
On peut installer Ansible de différentes manières et pire avec différentes version de Python !

Cela n'est pas facile de travailler à *plusieurs* sur le même projet, car on risque d'avoir des réactions différentes en fonction des *différentes* versions d'Ansible, Python et Ruby.

Le but étant alors d'avoir un *suitcase* pour Ansible d'installé sur sa machine, indépendant de son environnement de travail, afin de pouvoir utiliser tous la même version d'Ansible.

Le *suitcase* doit pouvoir s'installer sans modifier l'environnement de travail sur la machine de l'utilisateur. C'est pourquoi, il est installé dans un dossier, *ansible-deps-cahe* totalement *isolé* du reste de la machine de l'utilisateur.


## Installation
Il n'y a rien à installer, car le *suitcase* va s'installer automatiquement lors de la première utilisation !

Il n'y a pas besoin d'être *sudo* pour l'installer, sauf pour les quelques *lib* manquantes qu'il nous demandera d'installer, dans notre machine cette fois, lors de la première utilisation !


## Utilisation
Pour l'utiliser simplement faire:
```
./start.sh
```
Lors de la première utilisation, cela va prendre du temps, car c'est ici que le suitcase va s'installer. Après les utilisation suivante, c'est instantané



## Sources


