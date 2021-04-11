# xbar-hello-world

![GitHub last commit](https://img.shields.io/github/last-commit/remarkablemark/xbar-hello-world)

[xbar](https://github.com/matryer/xbar) plugin that outputs "Hello, World!" in the macOS menu bar.

## Prerequisites

### Node.js

Install [Node.js](https://nodejs.org/):

```sh
brew install node
```

### xbar

Install [xbar](https://xbarapp.com/):

```sh
brew install --cask xbar
```

Open xbar:

```sh
open /Applications/xbar.app
```

If Apple blocks the app from being opened:

```
"xbar" cannot be opened because the developer cannot be verified.
```

macOS menu bar > Apple > `System Preferences...` > `Security & Privacy` > `General` > "xbar" was blocked from use because it is not from an identified developer > `Open Anyway`

## Install Plugin

Clone repository:

```sh
git clone https://github.com/remarkablemark/xbar-hello-world.git
cd xbar-hello-world
```

Install plugin by creating a symbolic link in the plugin folder:

```sh
npm run plugin:install
```

macOS menu bar > `xbar` > `Refresh all`

## Open Plugin

macOS menu bar > `xbar` > `Open plugin...`

You can toggle the plugin on/off and change the refresh interval.

## Uninstall Plugin

### Recommended Method

macOS menu bar > `xbar` > `Open plugin...` > `Uninstall this plugin...`

### Alternative Method

Uninstall plugin by deleting the symbolic link in the plugin folder:

```sh
npm run plugin:uninstall
```

macOS menu bar > `xbar` > `Refresh all`

## License

[MIT](LICENSE)
