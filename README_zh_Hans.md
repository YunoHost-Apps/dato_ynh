<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Dato

[![集成程度](https://dash.yunohost.org/integration/dato.svg)](https://ci-apps.yunohost.org/ci/apps/dato/) ![工作状态](https://ci-apps.yunohost.org/ci/badges/dato.status.svg) ![维护状态](https://ci-apps.yunohost.org/ci/badges/dato.maintain.svg)

[![使用 YunoHost 安装 Dato](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=dato)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Dato。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

Dato is an application that make it easy to generate and modify any type of database entries with a nice UI/UX.

With it, you can create and handle any amount of databases, choose and setup what type of entries to put in them and customize yourself the UI that will let you edit databases entries.

You can think of dato as an app that can replace: address book apps, todo list apps, table sheets to store lists of things... because it's flexible enough to do all these the way you want it to be done.

The purpose of dato is not to propose a UI specific to some purpose, but something as customizable as possible, so that you can in a few minutes setup any kind of database. However, if you want a more specialized interface to improve the UX for your needs, you can create plugins to extend the default general functionalities.

Dato is a progressive webapp, which means that you can install it from the browser in computer and phones, and use it offline.


**分发版本：** 1.7.4~ynh1

**演示：** <https://publicdato.eauchat.org/>

## 截图

![Dato 的截图](./doc/screenshots/main_screen.webp)

## 文档与资源

- 官方应用网站： <https://squeak.eauchat.org/dato>
- 官方管理文档： <https://squeak.eauchat.org/dato/>
- 上游应用代码库： <https://framagit.org/squeak/dato>
- YunoHost 商店： <https://apps.yunohost.org/app/dato>
- 报告 bug： <https://github.com/YunoHost-Apps/dato_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/dato_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/dato_ynh/tree/testing --debug
或
sudo yunohost app upgrade dato -u https://github.com/YunoHost-Apps/dato_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
