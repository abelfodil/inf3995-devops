# Commandes avancées de Git

## bisect

Effectue une recherche binaire afin de trouver le commit qui a introduit un bug.

Par exemple, sur un intervalle de 10 000 commits, il y aura dans le pire des cas 14 recherches.

### Comment l'utiliser

1. `git bisect start`
2. `git bisect good SOME_COMMIT_WHERE_BUG_ISNT_HERE`
3. `git bisect bad SOME_COMMIT_WHERE_BUG_IS_HERE`
4. Compiler le programme et vérifier si le bug est présent
5. - `git bisect good` si le bug est absent
    - `git bisect bad` si le bug est présent
6. Répéter à partir de 4 jusqu'à ce `git bisect` trouve le bug

### Liens utiles

- <https://git-scm.com/docs/git-bisect>

- TODO: Repo exemple

## submodule

- Ajouter un sous-module: `git submodule add repo-url submodule-path`

- Mettre à jour les sous-module: `git submodule update --init --recursive`

- Cloner un repo récursivement: `git clone --recurse-submodules repo-url`

## merge-base

## rebase

## reflog & fsck --lost-found
