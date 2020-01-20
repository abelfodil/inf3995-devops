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

Permet d'avoir un repo git à l'intérieur d'un autre repo git.

### Comment l'utiliser

- Ajouter un sous-module: `git submodule add repo-url submodule-path`

- Mettre à jour les sous-module: `git submodule update --init --recursive`

- Cloner un repo récursivement: `git clone --recurse-submodules repo-url`

### Liens utiles

- <https://git-scm.com/book/en/v2/Git-Tools-Submodules>

## rebase

Réapplique une série de commits sur une base différente

### Comment l'utiliser

- Changer la base des commits de la branche courante: `git rebase source-branch`

- Changer la base des commits de la branche cible: `git rebase source-branch target-branch`

- Changer le commit parent par un autre commit: `git rebase --onto new-parent old-parent`

- Changer l'ordre des `n` derniers commits, les squasher ou bien en supprimer quelques-uns intéractivement: `git rebase -i HEAD~n`

### Liens utiles

- <https://learngitbranching.js.org/>

- <https://www.gitkraken.com/>

- <https://git-scm.com/docs/git-rebase>

- <https://git-scm.com/book/en/v2/Git-Branching-Rebasing>

## Autres commandes

- Ajouter un commit existant à la branche courante: `git cherry-pick -x commit-hash`

- Afficher l'historique des commandes Git effectuées sur le repo courant: `git reflog show --all`

- Afficher les objets flottants du repo courant: `git fsck --lost-found`
