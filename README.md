create-near-app
===============
[![Gitpod Ready-to-Code](https://img.shields.io/badge/Gitpod-Ready--to--Code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/nearprotocol/create-near-app) 

Quickly build apps backed by the [NEAR](https://near.org) blockchain


Prerequisites
=============

Make sure you have a [current version of Node.js](https://nodejs.org/en/about/releases/) installed – we are targeting versions `12+`.
**Note**: if using Node version 13 please be advised that you will need version >= 13.7.0


Getting Started
===============

To create a new NEAR project with default settings, you just need one command

Using [npm's npx](https://blog.npmjs.org/post/162869356040/introducing-npx-an-npm-package-runner):

    npx create-near-app [options] new-awesome-project

**Or**, if you prefer [yarn](https://classic.yarnpkg.com/en/docs/cli/create/):

    yarn create near-app [options] new-awesome-project

Without any options, this will create a project with a **vanilla JavaScript** frontend and an [AssemblyScript](https://docs.near.org/docs/roles/developer/contracts/assemblyscript) smart contract

Other options:

* `--frontend=react` – use [React](https://reactjs.org/) for your frontend template
* `--contract=rust` – use [Rust](https://docs.near.org/docs/roles/developer/contracts/near-sdk-rs) for your smart contract


Develop your own Dapp
=====================

Follow the instructions in the README.md in the project you just created! 🚀


Getting Help
============

Check out our [documentation](https://docs.near.org) or chat with us on [Discord](http://near.chat). We'd love to hear from you!


Contributing
============

To make changes to `create-near-app` itself:

* clone the repository (Windows users, [use `git clone -c core.symlinks=true`](https://stackoverflow.com/a/42137273/249801))
* in your terminal, enter one of the folders inside `templates`, such as `templates/vanilla`
* now you can run `yarn` to install dependencies and `yarn dev` to run the local development server, just like you can in a new app created with `create-near-app`


about commit messages
---------------------

`create-near-app` uses semantic versioning and auto-generates nice release notes & a changelog all based off of the commits. We do this by enforcing [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/). In general the pattern mostly looks like this:

    type(scope?): subject  #scope is optional; multiple scopes are supported (current delimiter options: "/", "\" and ",")

Real world examples can look like this:

    chore: run tests with GitHub Actions

    fix(server): send cors headers

    feat(blog): add comment section

If your change should show up in release notes as a feature, use `feat:`. If it should show up as a fix, use `fix:`. Otherwise, you probably want `refactor:` or `chore:`. [More info](https://github.com/conventional-changelog/commitlint/#what-is-commitlint)


Deploy
------

If you want to deploy a new version, you will need two prerequisites:

1. Get publish-access to [the NPM package](https://www.npmjs.com/package/near-api-js)
2. Get write-access to [the GitHub repository](https://github.com/near/near-api-js)
3. Obtain a [personal access token](https://gitlab.com/profile/personal_access_tokens) (it only needs the "repo" scope).
4. Make sure the token is [available as an environment variable](https://github.com/release-it/release-it/blob/master/docs/environment-variables.md) called `GITHUB_TOKEN`

Then run one script:

    yarn release

Or just `release-it`


License
=======

This repository is distributed under the terms of both the MIT license and the Apache License (Version 2.0).
See [LICENSE](LICENSE) and [LICENSE-APACHE](LICENSE-APACHE) for details.
