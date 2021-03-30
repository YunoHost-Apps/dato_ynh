# App exemple pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/dato.svg)](https://dash.yunohost.org/appci/app/dato) ![](https://ci-apps.yunohost.org/ci/badges/dato.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/dato.maintain.svg)  
[![Installer dato avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=dato)

*[Read this readme in english.](./README.md)*

> *Ce package vous permet d'installer dato rapidement et simplement sur un serveur YunoHost.  
Si vous n'avez pas YunoHost, consultez [le guide](https://yunohost.org/#/install) pour apprendre comment l'installer.*

## Vue d'ensemble

Dato vous permet de créer, modifier tous types de bases de données avec une interface flexible.

L'application peut remplacer carnet d'addresse, application de gestions de lists, tableurs... parce que son interface est librement customizable.

Le but de dato n'est pas de proposer l'interface idéale pour chaque outil, mais de permettre en quelques minutes de mettre en place une interface pratique pour la gestion de tous types de données.

Dato est une application web progressive, ce qui veut dire que vous pouvez l'installer dans ordinateur et téléphones facilement et l'utiliser hors connection.

**Version incluse :** 1.5.11


## Captures d'écran

![](https://squeak.eauchat.org/share/screenshots/dato.png)


## Démo

[Démo officielle](https://publicdato.eauchat.org/)


## Configuration

Cette application peut être customisée en modificant le fichier `config/public.js` situé dans `/opt/yunohost/APPID/` (`APPID` devrait-être `dato` pour une première instance et puis, `dato__2`, `dato__3`... pour les suivantes).
Il est aussi possible de modifier `config/private.js`, mais à vos risques et périls.


## Ajouter des utilisateurs

Si vous activez l'autosynchronisation, les utilisateurs auront besoin d'un compte pour utiliser l'application. Dato ne supporte pas LDAP pour le moment, vous devrez donc ajouter des utilisateurs séparemment dans sa base de données.
Pour ajouter un utilisateur, il suffit de visiter la page `/users/` (https://dato.yourdomain.tld/users/), créer un nouvel utilisateur, et ne pas oublier de cliquer sur "roles" et d'ajouter le role `dato`.
Si vous voulez donner le droit à un utilisateur d'administrer (= d'ajouter/supprimer des utilisateurs), il suffit de lui donner additionellement, le rôle `dato-admin`.

Si besoin, vous pouvez créer des liens pour permettre à un utilisateur de modifier son mot de passe. Il suffira alors d'envoyer ce lien manuellement à l'utilisateur.


## Note sur dato

Dato est une application web progressive (PWA). En deux mots, cela veut dire que les navigateurs gardent en cache l'applcation entière, afin de ne pas avoir à la demander au serveur à chaque visite.
Cela permet de moins soliciter le serveur, et d'utiliser l'application en l'absence de connexion internet.

Quand l'application est mises à jour, le navigateur des utilisateurs détecte automatiquement la nouvelle version et propose de recharcher la page pour mettre à jour l'application. Cependant, certains navigateurs ne semblent pas toujours se rendre compte qu'une nouvelle version est disponible instantanément. Pour vérifier la version que vous utilisez, vous pouvez cliquer sur "?" (en haut à droite dans l'interface de dato), et choisir crédit pour y trouver le numéro de version actuellement installé.
Vous pouvez aussi forcer une mise à jour de l'application depuis le serveur en ouvrant la page "about:serviceworker" dans votre navigateur, et en cliquant sur le bouton "unregister" du service du domaine sur lequel vous avez installé dato.


## Documentation

 * Documentation officielle : https://squeak.eauchat.org/dato/


## Caractéristiques spécifiques YunoHost

#### Support multi-utilisateur

LDAP n'est pas supporté, mais dato contient son propre mécanisme de gestion des utilisateurs, et permet de rendre l'application soit disponible à tous, soit restreinte aux utilisateurs choisis quand l'autosynchronisation est activée.

#### Architectures supportées

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/dato%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/dato/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/dato%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/dato/)


## Limitations

Pour le moment, dato a besoin d'un domaine/sous-domaine complet et ne peut être installé dans un sous-chemin.


## Liens

 * Signaler un bug : https://github.com/YunoHost-Apps/dato_ynh/issues
 * Site de l'application : Lien vers le site officiel de cette application.
 * Dépôt de l'application principale : Lien vers le dépôt officiel de l'application principale.
 * Site web YunoHost : https://yunohost.org/

---

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/dato_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/dato_ynh/tree/testing --debug
ou
sudo yunohost app upgrade dato -u https://github.com/YunoHost-Apps/dato_ynh/tree/testing --debug
```
