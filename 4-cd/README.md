# Déploiement continu

## Prérequis

- `ansible` (PC)
- `rsync` (PC et FPGA)

## Objectif final

En ajoutant un ou des commits sur la branche `master`, on voudrait compiler et déployer le code client/serveur sur les FPGA.

## Utiliser Ansible (semi-manuel)

Lancer la commande `ansible-playbook playbook.yml`

## Mode purement automatique

Ajouter une section CD (continuous deployment) dans le script de CI et appeler la commande Ansible

## Liens utiles

- <https://docs.ansible.com/ansible/latest/user_guide/index.html>
