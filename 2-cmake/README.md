# CMake

## Prérequis

- `cmake`
- `ninja` (recommandé) or GNU `make`
- `gcc` ou `clang`

## Utiliser CMake (gros résumé)

- Générer le projet CMake: `cmake -Hsource_dir -Bbuild_dir`

- Compiler un éxecutable `executable` dans le projet CMake: `cmake --build build_dir --target executable`

## Ne vous cassez pas la tête

- Copiez le gabarit fourni et adaptez le à vos besoins.

- Utilisez le script `./compile.sh target-name` afin de compiler la cible `target-name` (ou simplement `./compile.sh` pour tout compiler).

## Liens utiles

- <https://cliutils.gitlab.io/modern-cmake/>
