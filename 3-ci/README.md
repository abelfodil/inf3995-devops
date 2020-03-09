# CMake

## Prérequis

- `docker`

## Construction de l'image CI

- Construction: `docker build -t registry_url/inf3995-ci ci`

- Publication `docker push registry_url/inf3995-ci`

## Intégration continue

### Gitlab CI

- Copier `.gitlab-ci.yml` à la racine de votre repo

- Enregistrer un ou plusieurs [exécuteurs](https://github.com/abelfodil/gitlab-runner)

### Github (expérimental)

- Copier `.github-actions.yml` à la racine de votre repo

- Enregistrer un ou plusieurs [exécuteurs](https://github.com/abelfodil/github-actions-runner)
