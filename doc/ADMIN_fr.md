
## Configuration

Cette application peut être personnalisée en modifiant le fichier `config/public.js` situé dans `/opt/yunohost/APPID/` (`APPID` devrait-être `dato` pour une première instance et puis, `dato__2`, `dato__3`... pour les suivantes).
Il est aussi possible de modifier `config/private.js`, mais à vos risques et périls.

## Ajouter des utilisateurs

Si vous activez l'autosynchronisation, les utilisateurs auront besoin d'un compte pour utiliser l'application. Dato ne supporte pas LDAP pour le moment, vous devrez donc ajouter des utilisateurs séparément dans sa base de données.
Pour ajouter un utilisateur, il suffit de visiter la page `/users/` (https://dato.yourdomain.tld/users/), créer un nouvel utilisateur, et ne pas oublier de cliquer sur "roles" et d'ajouter le rôle `dato`.
Si vous voulez donner le droit à un utilisateur d'administrer (= d'ajouter/supprimer des utilisateurs), il suffit de lui donner additionnellement, le rôle `dato-admin`.

Si besoin, vous pouvez créer des liens pour permettre à un utilisateur de modifier son mot de passe. Il suffira alors d'envoyer ce lien manuellement à l'utilisateur.

## Note sur dato

Dato est une application web progressive (PWA). En deux mots, cela veut dire que les navigateurs gardent en cache l'application entière, afin de ne pas avoir à la demander au serveur à chaque visite.
Cela permet de moins soliciter le serveur, et d'utiliser l'application en l'absence de connexion internet.

Quand l'application est mise à jour, le navigateur des utilisateurs détecte automatiquement la nouvelle version et propose de recharcher la page pour mettre à jour l'application. Cependant, certains navigateurs ne semblent pas toujours se rendre compte qu'une nouvelle version est disponible instantanément. Pour vérifier la version que vous utilisez, vous pouvez cliquer sur "?" (en haut à droite dans l'interface de dato), et choisir "crédit" pour y trouver le numéro de version actuellement installé.
Vous pouvez aussi forcer une mise à jour de l'application depuis le serveur en ouvrant la page "about:serviceworker" dans votre navigateur, et en cliquant sur le bouton "unregister" du service du domaine sur lequel vous avez installé dato.
