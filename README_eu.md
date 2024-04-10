<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Dato YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/dato.svg)](https://dash.yunohost.org/appci/app/dato) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/dato.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/dato.maintain.svg)

[![Instalatu Dato YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=dato)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Dato YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

Dato is an application that make it easy to generate and modify any type of database entries with a nice UI/UX.

With it, you can create and handle any amount of databases, choose and setup what type of entries to put in them and customize yourself the UI that will let you edit databases entries.

You can think of dato as an app that can replace: address book apps, todo list apps, table sheets to store lists of things... because it's flexible enough to do all these the way you want it to be done.

The purpose of dato is not to propose a UI specific to some purpose, but something as customizable as possible, so that you can in a few minutes setup any kind of database. However, if you want a more specialized interface to improve the UX for your needs, you can create plugins to extend the default general functionalities.

Dato is a progressive webapp, which means that you can install it from the browser in computer and phones, and use it offline.


**Paketatutako bertsioa:** 1.7.1~ynh1

**Demoa:** <https://publicdato.eauchat.org/>

## Pantaila-argazkiak

![Dato(r)en pantaila-argazkia](./doc/screenshots/main_screen.webp)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://squeak.eauchat.org/dato>
- Administratzaileen dokumentazio ofiziala: <https://squeak.eauchat.org/dato/>
- Jatorrizko aplikazioaren kode-gordailua: <https://framagit.org/squeak/dato>
- YunoHost Denda: <https://apps.yunohost.org/app/dato>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/dato_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/dato_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/dato_ynh/tree/testing --debug
edo
sudo yunohost app upgrade dato -u https://github.com/YunoHost-Apps/dato_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
