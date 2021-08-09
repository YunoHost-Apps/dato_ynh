* Limitations
    * Pour le moment, dato a besoin d'un domaine/sous-domaine complet et ne peut �tre install� dans un sous-chemin.
    * LDAP n'est pas support�, mais dato contient son propre m�canisme de gestion des utilisateurs, et permet de rendre l'application soit disponible � tous, soit restreinte aux utilisateurs choisis quand l'autosynchronisation est activ�e.

## Configuration

Cette application peut �tre personnalis�e en modifiant le fichier `config/public.js` situ� dans `/opt/yunohost/APPID/` (`APPID` devrait-�tre `dato` pour une premi�re instance et puis, `dato__2`, `dato__3`... pour les suivantes).
Il est aussi possible de modifier `config/private.js`, mais � vos risques et p�rils.


## Ajouter des utilisateurs

Si vous activez l'autosynchronisation, les utilisateurs auront besoin d'un compte pour utiliser l'application. Dato ne supporte pas LDAP pour le moment, vous devrez donc ajouter des utilisateurs s�par�ment dans sa base de donn�es.
Pour ajouter un utilisateur, il suffit de visiter la page `/users/` (https://dato.yourdomain.tld/users/), cr�er un nouvel utilisateur, et ne pas oublier de cliquer sur "roles" et d'ajouter le r�le `dato`.
Si vous voulez donner le droit � un utilisateur d'administrer (= d'ajouter/supprimer des utilisateurs), il suffit de lui donner additionnellement, le r�le `dato-admin`.

Si besoin, vous pouvez cr�er des liens pour permettre � un utilisateur de modifier son mot de passe. Il suffira alors d'envoyer ce lien manuellement � l'utilisateur.


## Note sur dato

Dato est une application web progressive (PWA). En deux mots, cela veut dire que les navigateurs gardent en cache l'application enti�re, afin de ne pas avoir � la demander au serveur � chaque visite.
Cela permet de moins soliciter le serveur, et d'utiliser l'application en l'absence de connexion internet.

Quand l'application est mise � jour, le navigateur des utilisateurs d�tecte automatiquement la nouvelle version et propose de recharcher la page pour mettre � jour l'application. Cependant, certains navigateurs ne semblent pas toujours se rendre compte qu'une nouvelle version est disponible instantan�ment. Pour v�rifier la version que vous utilisez, vous pouvez cliquer sur "?" (en haut � droite dans l'interface de dato), et choisir "cr�dit" pour y trouver le num�ro de version actuellement install�.
Vous pouvez aussi forcer une mise � jour de l'application depuis le serveur en ouvrant la page "about:serviceworker" dans votre navigateur, et en cliquant sur le bouton "unregister" du service du domaine sur lequel vous avez install� dato.
